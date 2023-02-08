#include "editor_manager.h"

#include "../nativefiledialog/src/include/nfd.h"
#include "entity_model.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include <string>

void EditorManager::scrollCallback(double x, double y) {
  // ImGui_ImplGlfw_ScrollCallback(w, x, y);

  if (!ImGui::IsAnyItemActive()) {
    camera.ProcessMouseScroll(static_cast<float>(y));
  }
}

void EditorManager::mouseButtonCallback(int button, int action, int modsy) {
  // ImGui_ImplGlfw_MouseButtonCallback(w, button, action, modsy);

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
// TODO: fix
void EditorManager::keyCallBack(float deltaTime) {
  // ImGui_ImplGlfw_KeyCallback(w, key, scancode, action, mods);
  /*

if (!ImGui::IsAnyItemActive()) {
      if (glfwGetKey(w, GLFW_KEY_W) == GLFW_PRESS)
        camera.ProcessKeyboard(FORWARD, deltaTime);
      if (glfwGetKey(w, GLFW_KEY_S) == GLFW_PRESS)
        camera.ProcessKeyboard(BACKWARD, deltaTime);
      if (glfwGetKey(w, GLFW_KEY_A) == GLFW_PRESS)
        camera.ProcessKeyboard(LEFT, deltaTime);
      if (glfwGetKey(w, GLFW_KEY_D) == GLFW_PRESS)
        camera.ProcessKeyboard(RIGHT, deltaTime);
    }*/
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

void EditorManager::Load() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();
  project->Load("./");
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

void EditorManager::RenderUI() {
  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();

  if (ImGui::BeginMainMenuBar()) {
    if (ImGui::BeginMenu("File")) {
      if (ImGui::MenuItem("New")) {
        NewProject();
      }
      if (ImGui::MenuItem("Open")) {
        Load();
      }
      if (project != nullptr) {

        if (ImGui::MenuItem("Save")) {
          project->Save("./");
        }
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
              Asset *asset = new Asset(outPath);
              loadedWorld->assets.push_back(asset);

              free(outPath);
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
            if (ImGui::MenuItem((world->name + "##" + world->id).c_str())) {
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
          events->CLOSE_EDITOR = true;
        }
        ImGui::EndMenu();
      }
    }
    ImGui::EndMainMenuBar();
    if (loadedWorld != nullptr) {
      ImGui::Begin("Assets");
      for (Asset *asset : loadedWorld->assets) {
        if (ImGui::Button(asset->id.c_str())) {
        }
      }
      ImGui::End();

      ImGui::Begin("Entities");
      for (auto entity = loadedWorld->entities.begin();
           entity != loadedWorld->entities.end(); ++entity) {
        int index = std::distance(loadedWorld->entities.begin(), entity);
        if (ImGui::Button(((*entity)->name + "##" + (*entity)->engineIdentifier)
                              .c_str())) {
          selectedEntity = index;
        }
      }

      ImGui::End();

      ImGui::Begin("Scene");
      ImGui::InputText("Name", &loadedWorld->name);
      if (project->mainWorldId != loadedWorld->id) {
        if (ImGui::Button("Set as Main World")) {
          project->mainWorldId = loadedWorld->id;
        }
      }
      ImGui::End();

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
    }
  }

  ImGui::Render();
  ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}

void EditorManager::draw(float deltaTime) {
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

  events->CLOSE_EDITOR = false;
}
