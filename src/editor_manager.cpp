#include "editor_manager.h"
#include "../nativefiledialog/src/include/nfd.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"

#include <cstddef>

EditorManager::EditorManager() {}

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
  for (World *w : project->worlds) {
    if (w->id == worldId) {
      loadedWorld = w;
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
              loadedWorld->entities.push_back(entity);
            }

            if (ImGui::MenuItem("Camera")) {
              CameraEntity *entity = new CameraEntity();
              loadedWorld->entities.push_back(entity);
              if (loadedWorld->defaultCameraEntityId == "") {
                loadedWorld->defaultCameraEntityId = entity->engineIdentifier;
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
        if (ImGui::MenuItem("Play")) {
          playing = true;
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

void EditorManager::Draw() {
  float currentFrame = static_cast<float>(glfwGetTime());
  deltaTime = currentFrame - lastFrame;
  lastFrame = currentFrame;

  if (loadedWorld != nullptr) {
    for (Entity *entity : loadedWorld->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);

      entity->Draw(camera, projection);
    }
  }
  RenderUI();
}