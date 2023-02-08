#include "window_opengl.h"

#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "window.h"

static void mouse_callback(GLFWWindow *w, double x, double y) {
  WindowParent *handler =
      reinterpret_cast<WindowParent *>(glfwGetWindowOpenglUserPointer(w));
  handler->mousePosCallback(x, y);
}

static void mouse_button_callback(GLFWWindow *w, int button, int action,
                                  int mods) {
  WindowParent *handler =
      reinterpret_cast<WindowParent *>(glfwGetWindowOpenglUserPointer(w));
  handler->mouseButtonCallback(button, action, mods);
}

static void scroll_callback(GLFWWindow *w, double x, double y) {
  WindowParent *handler =
      reinterpret_cast<WindowParent *>(glfwGetWindowOpenglUserPointer(w));
  handler->scrollCallback(x, y);
}


static void framebuffer_size_callback(GLFWWindow *WindowOpengl, int width,
                                      int height) {
  // make sure the viewport matches the new WindowOpengl dimensions; note that
  // width and height will be significantly larger than specified on retina
  // displays.
  glViewport(0, 0, width, height);
}


void WindowOpengl::Init() {
  // glfw: initialize and configure
  // ------------------------------
  glfwInit();
  GLFWWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  GLFWWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  GLFWWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
  GLFWWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

  window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Game", NULL, NULL);
  if (window == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return;
  }
  glfwMakeContextCurrent(window);
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
  glfwSetCursorPosCallback(window, mouse_callback);
  glfwSetScrollCallback(window, scroll_callback);
  glfwSetMouseButtonCallback(window, mouse_button_callback);

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

  glfwSetWindowUserPointer(window, reinterpret_cast<void *>(parent));
}

WindowOpengl::~WindowOpengl() {
  ImGui_ImplOpenGL3_Shutdown();
  ImGui_ImplGlfw_Shutdown();
  ImGui::DestroyContext();

  glfwDestroyWindow(window);
  glfwTerminate();
}

void WindowOpengl::Run() {
  int width, height;

  float deltaTime = 0.0f; // time between current frame and last frame
  float lastFrame = 0.0f;

  // Loop until the user closes the window
  while (!glfwWindowShouldClose(window) && !events->CLOSE_EDITOR) {

    // Resize the viewport
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    float currentFrame = static_cast<float>(glfwGetTime());

    deltaTime = currentFrame - lastFrame;
    lastFrame = currentFrame;

    parent->keyCallBack(deltaTime);

    parent->draw(deltaTime);

    // Swap front and back buffers
    glfwSwapBuffers(window);

    // Poll for and process events
    glfwPollEvents();
  }
}