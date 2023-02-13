#include "editor_manager.h"

#include "core/entities.h"
#include "core/json_export.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "nfd.h"
#include <fstream>
#include <iostream>
#include <string>

namespace Hades {

void EditorManager::scrollCallback(double x, double y) {
  camera.scrollCallback(x, y);
}

void EditorManager::mouseButtonCallback(int button, int action, int modsy) {
  if (!ImGui::IsAnyItemActive() && button == GLFW_MOUSE_BUTTON_RIGHT) {
  }
}

void EditorManager::mousePosCallback(double x, double y) {

  if (!ImGui::IsAnyItemActive()) {
 }
}

EditorManager::EditorManager(Events *_events) { events = _events; }

void EditorManager::NewProject() {
  if (project != nullptr) {
    delete project;
  }
  auto project = new Project();
  load(project);
  SelectWorld(project->NewWorld());
  project->mainWorldId = loadedWorld->id;
}

void EditorManager::Open() {
  nfdchar_t *outPath = NULL;
  nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
  if (result == NFD_OKAY) {

    events->data = outPath;
    events->CLOSE_WINDOW = true;
    events->RUN_EDITOR = true;
    events->OPEN_PROJECT = true;

    free(outPath);
  } else {
    printf("Error: %s\n", NFD_GetError());
  }
}

void EditorManager::load(Project *newProject) {
  if (project != nullptr) {
    delete project;
  }
  project = newProject;
}

void EditorManager::SelectWorld(std::string worldId) {
  selectedEntity = nullptr;
  for (World *w : project->worlds) {
    if (w->id == worldId) {
      loadedWorld = w;
      w->init(project, window);
      return;
    }
  }
}

void EditorManager::RenderMenuBarUI() {
  if (ImGui::BeginMainMenuBar()) {
    if (ImGui::BeginMenu("File")) {
      if (ImGui::MenuItem("New project")) {
        NewProject();
      }
      if (ImGui::MenuItem("Open project")) {
        Open();
      }
      if (project != nullptr) {

        if (ImGui::MenuItem("Save")) {

          std::string s = JSONExporter::fromProject(project);
          std::ofstream myfile;
          myfile.open("./data.json");
          myfile << s;
          myfile.close();
        }
      }

      if (ImGui::MenuItem("Quit")) {
        events->CLOSE_WINDOW = true;
      }

      ImGui::EndMenu();
    }
    if (project != nullptr) {
      if (ImGui::BeginMenu("Editor")) {

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
          events->data = JSONExporter::fromProject(project);
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

  RenderMenuBarUI();

  if (project != nullptr) {
    if (loadedWorld != nullptr) {
      ImGui::Begin("Scene");

      ImGui::InputText("Name", &loadedWorld->name);
      if (project->mainWorldId != loadedWorld->id) {
        if (ImGui::Button("Set as Main World")) {
          project->mainWorldId = loadedWorld->id;
        }
      }

      if (ImGui::CollapsingHeader("Entities")) {

        if (ImGui::CollapsingHeader("New Entity")) {
          Entity *entity = nullptr;
          if (ImGui::Button("Container")) {
            entity = new Entity();
          }

          if (ImGui::Button("Model")) {
            entity = new ModelEntity();
          }

          if (ImGui::Button("Cube")) {
            entity = new ModelEntity();
            ((ModelEntity *)entity)->initBasicModel("cube");
          }

          if (ImGui::Button("Camera")) {
            entity = new CameraEntity();

            if (loadedWorld->mainCameraEntityId.empty()) {
              loadedWorld->mainCameraEntityId = entity->engineIdentifier;
            }
          }

          if (entity) {
            entity->init(false, nullptr);
            loadedWorld->entities.push_back(entity);
          }
        }
        ImGui::Text("Entities");
        if (loadedWorld->entities.empty()) {
          ImGui::Text("No entities created");
        }

        renderEntitiesUI(nullptr);
      }
      ImGui::End();
    }

    ImGui::Begin("Assets");
    if (project->assets.empty()) {
      ImGui::Text("No assets imported");
    }
    if (ImGui::Button("Import Asset")) {

      nfdchar_t *outPath = NULL;
      nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
      if (result == NFD_OKAY) {
        auto asset = new Asset(std::string(outPath));
        free(outPath);
        asset->parent = assetDirectory;
        project->assets.push_back(asset);

      } else {
        printf("Error: %s\n", NFD_GetError());
      }
    }

    renderAssetsUI(assetDirectory);

    if (ImGui::Button("New directory")) {
      auto asset = new Asset(std::string("directory"));
      asset->directory = true;
      asset->parent = assetDirectory;
      project->assets.push_back(asset);
    }

    ImGui::End();

    if (selectedEntity != nullptr) {
      ImGui::Begin("Entity");

      selectedEntity->EditorUI(this);

      if (ImGui::Button("Delete")) {
        loadedWorld->entities.erase(
            std::remove_if(loadedWorld->entities.begin(),
                           loadedWorld->entities.end(),
                           [this](Entity *e) { return e == selectedEntity; }),
            loadedWorld->entities.end());
        Entity *toDelete = selectedEntity;
        selectedEntity = nullptr;
        delete toDelete;
      }
      ImGui::End();
    }

    if (selectedAsset != nullptr) {
      ImGui::Begin("Asset");

      selectedAsset->EditorUI(this);

      if (ImGui::Button("Delete")) {
        project->assets.erase(
            std::remove_if(project->assets.begin(), project->assets.end(),
                           [this](Asset *e) { return e == selectedAsset; }),
            project->assets.end());
        selectedAsset = nullptr;
      }

      ImGui::End();
    }
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
    if (ImGui::Button("Close")) {
      showDebugStats = false;
    }
    ImGui::End();
  }
}

void EditorManager::renderAssetsUI(Asset *parent) {
  if (assetDirectory) {
    if (ImGui::Button("ROOT")) {
      assetDirectory = nullptr;
    }
  }
  for (Asset *asset : project->assets) {

    if (asset->parent == parent) {
      if (asset->isDirectory()) {

        if (ImGui::TreeNodeEx(asset->id.c_str())) {
          renderAssetsUI(asset);
          ImGui::TreePop();
        }
      } else {
        ImGuiTreeNodeFlags flags = ImGuiTreeNodeFlags_Leaf;

        if (ImGui::TreeNodeEx(asset->id.c_str(), flags)) {
          if (ImGui::IsItemClicked()) {
            selectedAsset = asset;
          }
          ImGui::TreePop();
        }
      }
    }
  }
}

void EditorManager::renderEntitiesUI(Entity *parent) {
  for (auto entity : loadedWorld->entities) {
    if (entity->parent == parent) {
      ImGuiTreeNodeFlags flags = ImGuiTreeNodeFlags_Leaf;

      if (ImGui::TreeNodeEx(
              (entity->id +
               (entity->engineIdentifier == loadedWorld->mainCameraEntityId
                    ? " [main camera]"
                    : "") +
               "##" + entity->engineIdentifier)
                  .c_str(),
              flags)) {
        if (ImGui::IsItemClicked()) {
          selectedEntity = entity;
        }
        ImGui::TreePop();
      }
    }
  }
}
void EditorManager::draw(float deltaTime) {
  if (!ImGui::IsAnyItemActive()) {
    if (window->keyPressed(GLFW_KEY_W))
      camera.ProcessKeyboard(FORWARD, deltaTime);
    if (window->keyPressed(GLFW_KEY_S))
      camera.ProcessKeyboard(BACKWARD, deltaTime);
    if (window->keyPressed(GLFW_KEY_A))
      camera.ProcessKeyboard(LEFTA, deltaTime);
    if (window->keyPressed(GLFW_KEY_D))
      camera.ProcessKeyboard(RIGHTD, deltaTime);
    if (window->keyPressed(GLFW_KEY_UP))
      camera.ProcessKeyboard(UP, deltaTime);
    if (window->keyPressed(GLFW_KEY_DOWN))
      camera.ProcessKeyboard(DOWN, deltaTime);
    if (window->keyPressed(GLFW_KEY_LEFT))
      camera.ProcessKeyboard(LEFT, deltaTime);
    if (window->keyPressed(GLFW_KEY_RIGHT))
      camera.ProcessKeyboard(RIGHT, deltaTime);
  }

  glm::mat4 projection = glm::perspective(
      glm::radians(45.0f), (float)window->width / (float)window->height, 0.1f,
      100.0f);

  glm::mat4 view = camera.GetViewMatrix();
  axis->draw(deltaTime, view, projection);
  if (loadedWorld != nullptr) {
    for (Entity *entity : loadedWorld->entities) {
      entity->draw(deltaTime, view, projection);
    }
  }
  RenderUI();
}

void EditorManager::run() {
  window = new WindowOpengl(reinterpret_cast<WindowParent *>(this), events);

  window->init();

  window->run();
}

EditorManager::~EditorManager() {
  delete project;
  delete window;
}
} // namespace Hades