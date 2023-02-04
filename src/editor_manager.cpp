#include "editor_manager.h"
#include "../nativefiledialog/src/include/nfd.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"

EditorManager::EditorManager() {}

void EditorManager::NewProject() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();

  World *world = project->NewWorld();
  SelectWorld(world);
}

void EditorManager::Load() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();
  project->Load("./");
}

void EditorManager::SelectWorld(World *world) { loadedWorld = world; }

void EditorManager::RenderUI(GLFWwindow *window) {
  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();

  if (playing) {
    if (ImGui::BeginMainMenuBar()) {
      if (ImGui::BeginMenu("Game")) {
        if (ImGui::MenuItem("Stop")) {
          playing = false;
        }

        ImGui::EndMenu();
      }
    }
    ImGui::EndMainMenuBar();

  } else {

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
        if (ImGui::MenuItem("Exit")) {
          glfwSetWindowShouldClose(window, GL_TRUE);
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
            if (ImGui::MenuItem("New Entity")) {
              Entity entity;
              loadedWorld->entities.push_back(entity);
            }
          }
          if (ImGui::BeginMenu("Worlds")) {
            if (ImGui::MenuItem("New World")) {
              World *world = project->NewWorld();
              SelectWorld(world);
            }
            ImGui::Separator();

            for (World *world : project->worlds) {
              if (ImGui::MenuItem(world->name.c_str())) {
                SelectWorld(world);
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
          if (ImGui::Button(asset->name.c_str())) {
          }
        }
        ImGui::End();

        ImGui::Begin("Entities");
        for (Entity entity : loadedWorld->entities) {
          if (ImGui::Button(entity.id.c_str())) {
          }
        }
        ImGui::End();
      }
    }
  }

  ImGui::Render();
  ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}