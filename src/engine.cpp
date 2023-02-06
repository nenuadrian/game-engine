#include <glad/glad.h>
#include "engine.h"
#define GLFW_INCLUDE_NONE
#include <cassert>
#include <cstddef>
#include <iostream>
#include <stdio.h>
#include <string>

#include "../imgui/backends/imgui_impl_glfw.h"
#include "../imgui/backends/imgui_impl_opengl3.h"
#include "../imgui/imgui.h"

#include "glm/ext.hpp"

void errorCallback(int error, const char *description) {
  fputs(description, stderr);
}
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;
static InputHandler *inputHandler;
// glfw: whenever the mouse moves, this callback is called
// -------------------------------------------------------
static void mouse_callback(GLFWwindow *w, double x, double y) {
  inputHandler->mousePosCallback(w, x, y);
}

static void mouse_button_callback(GLFWwindow *w, int button, int action,
                                  int mods) {
  inputHandler->mouseButtonCallback(w, button, action, mods);
}

// glfw: whenever the mouse scroll wheel scrolls, this callback is called
// ----------------------------------------------------------------------
static void scroll_callback(GLFWwindow *w, double x, double y) {
  inputHandler->scrollCallback(w, x, y);
}

static void keyCallback(GLFWwindow *w) { inputHandler->keyCallBack(w); }

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
      glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Game Engine", NULL, NULL);
  if (window == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return;
  }
  glfwMakeContextCurrent(window);
  inputHandler = &editorManager;

  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
  glfwSetCursorPosCallback(window, mouse_callback);
  glfwSetScrollCallback(window, scroll_callback);
  glfwSetMouseButtonCallback(window, mouse_button_callback);
  // glfwSetKeyCallback(window, keyCallback);

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

  Game *game = nullptr;
  // Loop until the user closes the window
  while (!glfwWindowShouldClose(window)) {

    // Resize the viewport
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    GL_CHECK(glEnable(GL_DEPTH_TEST));
    GL_CHECK(glDepthFunc(GL_LESS));

    GL_CHECK(glClearColor(114, 144, 154, 0));
    GL_CHECK(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));

    keyCallback(window);

    if (!editorManager.playing) {
      editorManager.Draw();
    } else {

      if (game == nullptr) {
        game = new Game(editorManager.project);
        inputHandler = game;
      }

      game->Draw();

      ImGui_ImplOpenGL3_NewFrame();
      ImGui_ImplGlfw_NewFrame();
      ImGui::NewFrame();

      if (ImGui::BeginMainMenuBar()) {
        if (ImGui::BeginMenu("Game")) {
          if (ImGui::MenuItem("Stop")) {
            editorManager.playing = false;
            game = nullptr;
            // delete game;
            inputHandler = &editorManager;
          }

          ImGui::EndMenu();
        }
      }
      ImGui::EndMainMenuBar();
      ImGui::Render();
      ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    }

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

Game::Game(Project *project_) {
  project = project_;
  LoadWorld(project->mainWorldId);
}

void Game::LoadWorld(std::string worldId) {
  Entity *defaultCamera = nullptr;
  for (World *w : project->worlds) {
    if (w->id == worldId) {
      world = w;
      break;
    }
  }
  assert(world != nullptr);
  for (Entity *entity : world->entities) {
    if (entity->engineIdentifier == world->defaultCameraEntityId) {
      defaultCamera = entity;
    }
    entity->Init(true);
  }
  assert(defaultCamera != nullptr);

  camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
}

void Game::Draw() {
  if (world != nullptr) {
    for (Entity *entity : world->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);

      entity->Draw(camera, projection);
    }
  }
}