#include "editor_manager.h"

#include "../nativefiledialog/src/include/nfd.h"
#include "entity_model.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include <iostream>
#include <string>

void EditorManager::scrollCallback(double x, double y) {
  if (!ImGui::IsAnyItemActive()) {
    camera.ProcessMouseScroll(static_cast<float>(y));
  }
}

void EditorManager::mouseButtonCallback(int button, int action, int modsy) {
  if (!ImGui::IsAnyItemActive() && button == GLFW_MOUSE_BUTTON_RIGHT) {
    processCamera = GLFW_PRESS == action;
  }
}
void EditorManager::mousePosCallback(double x, double y) {

  if (!ImGui::IsAnyItemActive() && processCamera) {

    float xpos = static_cast<float>(x);
    float ypos = static_cast<float>(y);

    if (firstMouse) {
      lastX = xpos;
      lastY = ypos;
      firstMouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset =
        lastY - ypos; // reversed since y-coordinates go from bottom to top

    lastX = xpos;
    lastY = ypos;
    camera.ProcessMouseMovement(xoffset, yoffset);
  }
}

EditorManager::EditorManager(Events *_events) { events = _events; }

void EditorManager::NewProject() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();

  SelectWorld(project->NewWorld());
  project->mainWorldId = loadedWorld->id;
}

void EditorManager::Open() {
  nfdchar_t *outPath = NULL;
  nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
  if (result == NFD_OKAY) {
    auto project = new Project();
    project->Load(std::string(outPath));
    free(outPath);
    Load(project);
  } else {
    printf("Error: %s\n", NFD_GetError());
  }
}

void EditorManager::Load(Project *newProject) {
  if (project != nullptr) {
    delete project;
  }
  project = newProject;
}

void EditorManager::SelectWorld(std::string worldId) {
  if (loadedWorld != nullptr) {
    loadedWorld->Uninit();
  }

  for (World *w : project->worlds) {
    if (w->id == worldId) {
      loadedWorld = w;
      w->Init(project);
      return;
    }
  }
}

void EditorManager::RenderMenuBarUI() {
  if (ImGui::BeginMainMenuBar()) {
    if (ImGui::BeginMenu("File")) {
      if (ImGui::MenuItem("New")) {
        NewProject();
      }
      if (ImGui::MenuItem("Open")) {
        Open();
      }
      if (project != nullptr) {

        if (ImGui::MenuItem("Save")) {
          project->Save("./");
        }
      }

      if (ImGui::MenuItem("Close")) {
        events->CLOSE_WINDOW = true;
      }

      ImGui::EndMenu();
    }
    if (project != nullptr) {
      if (ImGui::BeginMenu("Editor")) {
        if (loadedWorld != nullptr) {
          if (ImGui::MenuItem("Import Asset")) {

            nfdchar_t *outPath = NULL;
            nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
            if (result == NFD_OKAY) {
              Asset *asset = new Asset(std::string(outPath));
              free(outPath);

              loadedWorld->assets.push_back(asset);

            } else {
              printf("Error: %s\n", NFD_GetError());
            }
          }
          if (ImGui::BeginMenu("New Entity")) {
            if (ImGui::MenuItem("Model")) {
              ModelEntity *entity = new ModelEntity();
              entity->Init(false, nullptr);
              loadedWorld->entities.push_back(entity);
            }

            if (ImGui::MenuItem("Camera")) {
              CameraEntity *entity = new CameraEntity();
              loadedWorld->entities.push_back(entity);
              if (loadedWorld->mainCameraEntityId.empty()) {
                loadedWorld->mainCameraEntityId = entity->engineIdentifier;
              }
            }

            ImGui::EndMenu();
          }
        }
        if (ImGui::BeginMenu("Worlds")) {
          if (ImGui::MenuItem("New World")) {
            std::string worldId = project->NewWorld();
            SelectWorld(worldId);
          }
          ImGui::Separator();

          for (World *world : project->worlds) {
            if (ImGui::MenuItem(
                    (world->name +
                     (world->id == project->mainWorldId ? " (main)" : "") +
                     "##" + world->id)
                        .c_str())) {
              SelectWorld(world->id);
            }
          }

          ImGui::EndMenu();
        }
        ImGui::EndMenu();
      }

      if (ImGui::BeginMenu("Game")) {
        if (ImGui::MenuItem("Play", __null, false,
                            !project->mainWorldId.empty())) {
          events->RUN_GAME = true;
          events->CLOSE_WINDOW = true;
          events->data = project->JSON();
        }
        ImGui::EndMenu();
      }
    }
    if (ImGui::BeginMenu("Help")) {
      if (ImGui::MenuItem("Debug Stats")) {
        showDebugStats = !showDebugStats;
      }
      if (ImGui::MenuItem("Docs")) {
      }
      if (ImGui::MenuItem("About")) {
      }

      ImGui::EndMenu();
    }
    ImGui::EndMainMenuBar();
  }
}

void EditorManager::RenderUI() {
  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();

  RenderMenuBarUI();

  if (loadedWorld != nullptr) {
    ImGui::Begin("Scene");

    ImGui::InputText("Name", &loadedWorld->name);
    if (project->mainWorldId != loadedWorld->id) {
      if (ImGui::Button("Set as Main World")) {
        project->mainWorldId = loadedWorld->id;
      }
    }
    if (ImGui::CollapsingHeader("Assets")) {

      for (Asset *asset : loadedWorld->assets) {
        if (ImGui::Button(asset->id.c_str())) {
        }
      }
    }
    if (ImGui::CollapsingHeader("Entities")) {
      for (auto entity = loadedWorld->entities.begin();
           entity != loadedWorld->entities.end(); ++entity) {
        int index = std::distance(loadedWorld->entities.begin(), entity);
        if (ImGui::Button(
                ((*entity)->id +
                 ((*entity)->engineIdentifier == loadedWorld->mainCameraEntityId
                      ? " [main camera]"
                      : "") +
                 "##" + (*entity)->engineIdentifier)
                    .c_str())) {
          selectedEntity = index;
        }
      }
    }
    ImGui::End();
  }

  if (selectedEntity != -1) {
    auto entity = loadedWorld->entities.begin() + selectedEntity;
    ImGui::Begin("Entity");

    (*entity)->EditorUI(loadedWorld);

    if (ImGui::Button("Delete")) {
      selectedEntity = -1;
      loadedWorld->entities.erase(entity);
      delete *entity;
    }
    ImGui::End();
  }

  if (showDebugStats) {
    ++frame_count;

    auto t_current = std::chrono::high_resolution_clock::now();
    if (t_current >= t_one_second) {
      last_fps = frame_count;
      // Reset the frame count and start time
      frame_count = 0;
      t_start = t_current;
      t_one_second = t_start + std::chrono::seconds(1);
    }

    ImGui::Begin("Debug Stats");
    ImGui::Text("%d FPS", last_fps);
    if (ImGui::Button("Hide")) {
      showDebugStats = false;
    }
    ImGui::End();
  }

  ImGui::Render();
  ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}

void EditorManager::draw(float deltaTime) {

  if (!ImGui::IsAnyItemActive()) {
    if (window->keyPressed(GLFW_KEY_W))
      camera.ProcessKeyboard(FORWARD, deltaTime);
    if (window->keyPressed(GLFW_KEY_S))
      camera.ProcessKeyboard(BACKWARD, deltaTime);
    if (window->keyPressed(GLFW_KEY_A))
      camera.ProcessKeyboard(LEFT, deltaTime);
    if (window->keyPressed(GLFW_KEY_D))
      camera.ProcessKeyboard(RIGHT, deltaTime);
  }

  GL_CHECK(glEnable(GL_DEPTH_TEST));
  GL_CHECK(glDepthFunc(GL_LESS));

  GL_CHECK(glClearColor(114, 144, 154, 0));
  GL_CHECK(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));

  if (loadedWorld != nullptr) {
    for (Entity *entity : loadedWorld->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);

      entity->Draw(deltaTime, camera, projection);
    }
  }
  RenderUI();
}

void EditorManager::Run() {
  window = new WindowOpengl(reinterpret_cast<WindowParent *>(this), events);

  window->Init();

  window->Run();

  delete window;
}
