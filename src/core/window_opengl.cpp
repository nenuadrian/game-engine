#include "window_opengl.h"
#include <glad/glad.h>

#include "GLFW/glfw3.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include <iostream>

static void mouse_callback(GLFWwindow *w, double x, double y) {
  WindowParent *handler =
      reinterpret_cast<WindowParent *>(glfwGetWindowUserPointer(w));
  handler->mousePosCallback(x, y);
}

static void mouse_button_callback(GLFWwindow *w, int button, int action,
                                  int mods) {
  WindowParent *handler =
      reinterpret_cast<WindowParent *>(glfwGetWindowUserPointer(w));
  handler->mouseButtonCallback(button, action, mods);
}

static void scroll_callback(GLFWwindow *w, double x, double y) {
  WindowParent *handler =
      reinterpret_cast<WindowParent *>(glfwGetWindowUserPointer(w));
  handler->scrollCallback(x, y);
}

static void framebuffer_size_callback(GLFWwindow *WindowOpengl, int width,
                                      int height) {
  // make sure the viewport matches the new WindowOpengl dimensions; note that
  // width and height will be significantly larger than specified on retina
  // displays.
  glViewport(0, 0, width, height);
}

bool WindowOpengl::keyPressed(int code) {
  return glfwGetKey(w, code) == GLFW_PRESS;
}

void WindowOpengl::Init() {
  if (!glfwInit())
    return;

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif
  w = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Game", NULL, NULL);
  if (w == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return;
  }
  glfwMakeContextCurrent(w);
  glfwSetFramebufferSizeCallback(w, framebuffer_size_callback);
  glfwSetCursorPosCallback(w, mouse_callback);
  glfwSetScrollCallback(w, scroll_callback);
  glfwSetMouseButtonCallback(w, mouse_button_callback);

  // glad: load all OpenGL function pointers
  // ---------------------------------------
  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return;
  }
}

WindowOpengl::~WindowOpengl() {
  events->CLOSE_WINDOW = false;
  glfwDestroyWindow(w);
  glfwTerminate();
}

void WindowOpengl::Run() {
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  ImGui::StyleColorsDark();

  ImGui_ImplOpenGL3_Init();
  ImGui_ImplGlfw_InitForOpenGL(w, true);

  if (parent != nullptr) {
    glfwSetWindowUserPointer(w, reinterpret_cast<void *>(parent));
  }
  int width, height;

  float deltaTime = 0.0f; // time between current frame and last frame
  float lastFrame = 0.0f;

  // Loop until the user closes the window
  while (!glfwWindowShouldClose(w) && !events->CLOSE_WINDOW) {

    // Resize the viewport
    glfwGetFramebufferSize(w, &width, &height);
    glViewport(0, 0, width, height);

    float currentFrame = static_cast<float>(glfwGetTime());

    deltaTime = currentFrame - lastFrame;
    lastFrame = currentFrame;

    parent->keyCallBack(deltaTime);

    parent->draw(deltaTime);

    // Swap front and back buffers
    glfwSwapBuffers(w);

    // Poll for and process events
    glfwPollEvents();
  }

  ImGui_ImplOpenGL3_Shutdown();
  ImGui_ImplGlfw_Shutdown();
  ImGui::DestroyContext();
}