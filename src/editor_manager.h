#pragma once

#include "GLFW/glfw3.h"
#include "events.h"
#include "imgui_impl_glfw.h"
#include "input_handler.h"
#include "project.h"

#include <string>

class EditorManager : public InputHandler {
private:
  int selectedEntity = -1;
  Events *events;

public:
  Project *project = nullptr;
  World *loadedWorld = nullptr;
  bool processCamera = false;
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;
  Camera camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
  float lastX = SCR_WIDTH / 2.0f;
  float lastY = SCR_HEIGHT / 2.0f;
  bool firstMouse = true;

  EditorManager(Events *events);

  void Run();
  void Load();
  void NewProject();
  void RenderUI();
  void SelectWorld(std::string worldId);
  void Draw(float deltaTime);
  void scrollCallback(GLFWwindow *w, double x, double y) override {
    // ImGui_ImplGlfw_ScrollCallback(w, x, y);
    if (!ImGui::IsAnyItemActive()) {
      camera.ProcessMouseScroll(static_cast<float>(y));
    }
  }

  void mouseButtonCallback(GLFWwindow *w, int button, int action,
                           int modsy) override {
    // ImGui_ImplGlfw_MouseButtonCallback(w, button, action, modsy);
    if (!ImGui::IsAnyItemActive() && button == GLFW_MOUSE_BUTTON_RIGHT) {
      processCamera = GLFW_PRESS == action;
    }
  }
  void mousePosCallback(GLFWwindow *w, double x, double y) override {
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

  void keyCallBack(GLFWwindow *w, float deltaTime) override {
    // ImGui_ImplGlfw_KeyCallback(w, key, scancode, action, mods);
    if (!ImGui::IsAnyItemActive()) {
      if (glfwGetKey(w, GLFW_KEY_W) == GLFW_PRESS)
        camera.ProcessKeyboard(FORWARD, deltaTime);
      if (glfwGetKey(w, GLFW_KEY_S) == GLFW_PRESS)
        camera.ProcessKeyboard(BACKWARD, deltaTime);
      if (glfwGetKey(w, GLFW_KEY_A) == GLFW_PRESS)
        camera.ProcessKeyboard(LEFT, deltaTime);
      if (glfwGetKey(w, GLFW_KEY_D) == GLFW_PRESS)
        camera.ProcessKeyboard(RIGHT, deltaTime);
    }
  }

  void charCallback(GLFWwindow *w, unsigned int c) override {
    // ImGui_ImplGlfw_CharCallback(w, c);
  }
};