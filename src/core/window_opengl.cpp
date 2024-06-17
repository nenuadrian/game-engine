#include "window_opengl.h"
#include <glad/glad.h>

#include "GLFW/glfw3.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include <iostream>

namespace Hades
{
  static void mouse_callback(GLFWwindow *w, double x, double y)
  {
    WindowParent *handler =
        reinterpret_cast<WindowParent *>(glfwGetWindowUserPointer(w));
    handler->mousePosCallback(x, y);
  }

  static void mouse_button_callback(GLFWwindow *w, int button, int action,
                                    int mods)
  {
    WindowParent *handler =
        reinterpret_cast<WindowParent *>(glfwGetWindowUserPointer(w));
    handler->mouseButtonCallback(button, action, mods);
  }

  static void scroll_callback(GLFWwindow *w, double x, double y)
  {
    WindowParent *handler =
        reinterpret_cast<WindowParent *>(glfwGetWindowUserPointer(w));
    handler->scrollCallback(x, y);
  }

  static void framebuffer_size_callback(GLFWwindow *WindowOpengl, int width,
                                        int height)
  {
    // make sure the viewport matches the new WindowOpengl dimensions; note that
    // width and height will be significantly larger than specified on retina
    // displays.
    glViewport(0, 0, width, height);
  }

  bool WindowOpengl::keyPressed(int code)
  {
    return glfwGetKey(w, code) == GLFW_PRESS;
  }

  void WindowOpengl::init()
  {
    if (!glfwInit())
      return;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_SAMPLES, 4); // 4x antialiasing

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif
    w = glfwCreateWindow(width, height, "Game", NULL, NULL);
    if (w == NULL)
    {
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
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
      std::cout << "Failed to initialize GLAD" << std::endl;
      return;
    }

    printf("Renderer: %s\n", glGetString(GL_RENDERER));
    printf("OpenGL version supported %s\n", glGetString(GL_VERSION));

    glEnable(GL_DEPTH_TEST); // Depth Testing
    glDepthFunc(GL_LEQUAL);
    glDisable(GL_CULL_FACE);
    glCullFace(GL_BACK);
  }

  WindowOpengl::~WindowOpengl()
  {
    events->unsetEvent(EventType::CLOSE_WINDOW);

    glfwDestroyWindow(w);
    glfwTerminate();
  }

  void WindowOpengl::run()
  {
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO &io = ImGui::GetIO();
    ImGui::StyleColorsDark();

    ImGui_ImplOpenGL3_Init();
    ImGui_ImplGlfw_InitForOpenGL(w, true);

    ImGui::PushStyleVar(ImGuiStyleVar_WindowTitleAlign, ImVec2(0.5f, 0.5f)); // Center align title

    if (parent != nullptr)
    {
      glfwSetWindowUserPointer(w, reinterpret_cast<void *>(parent));
    }

    float deltaTime = 0.0f; // time between current frame and last frame
    float lastFrame = 0.0f;
    glClearColor(114, 144, 154, 0);

    // Loop until the user closes the window
    while (!glfwWindowShouldClose(w) && !events->isEventSet(EventType::CLOSE_WINDOW))
    {

      // Resize the viewport
      glfwGetFramebufferSize(w, &width, &height);
      glViewport(0, 0, width, height);
      glEnable(GL_DEPTH_TEST);
      glDepthFunc(GL_LESS);

      glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

      float currentFrame = static_cast<float>(glfwGetTime());

      deltaTime = currentFrame - lastFrame;
      lastFrame = currentFrame;

      ImGui_ImplOpenGL3_NewFrame();
      ImGui_ImplGlfw_NewFrame();
      ImGui::NewFrame();

      parent->keyCallBack(deltaTime);

      parent->draw(deltaTime);

      ImGui::Render();
      ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

      // Swap front and back buffers
      glfwSwapBuffers(w);

      // Poll for and process events
      glfwPollEvents();
    }

    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
  }
} // namespace Hades