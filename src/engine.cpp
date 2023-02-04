#include "engine.h"

#include "model_basic.h"
#include "model_complex.h"

#include <iostream>
#include <stdio.h>
#include <string>

// Without this gl.h gets included instead of gl3.h
#define GLFW_INCLUDE_NONE

#include "../imgui/backends/imgui_impl_glfw.h"
#include "../imgui/backends/imgui_impl_opengl3.h"
#include "../imgui/imgui.h"

#include "glm/ext.hpp"
#include <entt/entt.hpp>

#include "../nativefiledialog/src/include/nfd.h"
#include "nlohmann/json.hpp"
#include <fstream>

void errorCallback(int error, const char *description) {
  fputs(description, stderr);
}

void keyCallback(GLFWwindow *window, int key, int scancode, int action,
                 int mods) {
  if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
    glfwSetWindowShouldClose(window, GLFW_TRUE);
}

Engine::Engine() {}

void Engine::RenderUI(GLFWwindow *window) {
  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();

  if (editorManager.playing) {
    if (ImGui::BeginMainMenuBar()) {
      if (ImGui::BeginMenu("Game")) {
        if (ImGui::MenuItem("Stop")) {
          editorManager.playing = false;
        }

        ImGui::EndMenu();
      }
    }
    ImGui::EndMainMenuBar();

  } else {

    if (ImGui::BeginMainMenuBar()) {
      if (ImGui::BeginMenu("File")) {
        if (ImGui::MenuItem("New")) {
          editorManager.NewProject();
        }
        if (ImGui::MenuItem("Open")) {
          editorManager.Load();
        }
        if (editorManager.project != nullptr) {

          if (ImGui::MenuItem("Save")) {
            editorManager.project->Save("./");
          }
        }
        if (ImGui::MenuItem("Exit")) {
          glfwSetWindowShouldClose(window, GL_TRUE);
        }

        ImGui::EndMenu();
      }
      if (editorManager.project != nullptr) {
        if (ImGui::BeginMenu("Editor")) {
          if (editorManager.loadedWorld != nullptr) {
            if (ImGui::MenuItem("Import Asset")) {

              nfdchar_t *outPath = NULL;
              nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
              if (result == NFD_OKAY) {
                Asset *asset = new Asset(outPath);
                editorManager.loadedWorld->assets.push_back(asset);

                free(outPath);
              } else {
                printf("Error: %s\n", NFD_GetError());
              }
            }
            if (ImGui::MenuItem("New Entity")) {
              Entity entity;
              editorManager.loadedWorld->entities.push_back(entity);
            }
          }
          if (ImGui::BeginMenu("Worlds")) {
            if (ImGui::MenuItem("New World")) {
              World *world = editorManager.project->NewWorld();
              editorManager.SelectWorld(world);
            }
            ImGui::Separator();

            for (World *world : editorManager.project->worlds) {
              if (ImGui::MenuItem(world->name.c_str())) {
                editorManager.SelectWorld(world);
              }
            }

            ImGui::EndMenu();
          }
          ImGui::EndMenu();
        }

        if (ImGui::BeginMenu("Game")) {
          if (ImGui::MenuItem("Play")) {
            editorManager.playing = true;
          }
          ImGui::EndMenu();
        }
      }
      ImGui::EndMainMenuBar();
      if (editorManager.loadedWorld != nullptr) {
        ImGui::Begin("Assets");
        for (Asset *asset : editorManager.loadedWorld->assets) {
          if (ImGui::Button(asset->name.c_str())) {
          }
        }
        ImGui::End();

        ImGui::Begin("Entities");
        for (Entity entity : editorManager.loadedWorld->entities) {
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

const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
  // make sure the viewport matches the new window dimensions; note that width
  // and height will be significantly larger than specified on retina displays.
  glViewport(0, 0, width, height);
}

void Engine::Run() {
  // glfw: initialize and configure
  // ------------------------------
  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

  // glfw window creation
  // --------------------
  GLFWwindow *window =
      glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "LearnOpenGL", NULL, NULL);
  if (window == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return;
  }
  glfwMakeContextCurrent(window);
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

  // glad: load all OpenGL function pointers
  // ---------------------------------------
  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return;
  }

  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  (void)io;
  ImGui::StyleColorsDark();

  // Setup Platform/Renderer backends
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init();

  int width, height;

  auto shader = new Shader("../sample_project/3.3.shader.vs",
                           "../sample_project/3.3.shader.fs");
  auto model =
      ModelComplex("../sample_project/backpack/12305_backpack_v2_l3.obj");
  auto model2 = ModelBasic();
  // Loop until the user closes the window
  while (!glfwWindowShouldClose(window)) {
    // Resize the viewport
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    GL_CHECK(glEnable(GL_DEPTH_TEST));
    GL_CHECK(glDepthFunc(GL_LESS));

    GL_CHECK(glClearColor(114, 144, 154, 0));
    GL_CHECK(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));

    RenderUI(window);
    glUseProgram(shader->ID);

    model.Draw(shader->ID);
    // Swap front and back buffers
    glfwSwapBuffers(window);

    // Poll for and process events
    glfwPollEvents();
  }

  ImGui_ImplOpenGL3_Shutdown();
  ImGui_ImplGlfw_Shutdown();
  ImGui::DestroyContext();

  glfwDestroyWindow(window);
  glfwTerminate();
}

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
