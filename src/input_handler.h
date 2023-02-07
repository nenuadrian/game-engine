#pragma once

#include <GLFW/glfw3.h>


class InputHandler {
public:
  void virtual scrollCallback(GLFWwindow *w, double x, double y) {}
  void virtual mouseButtonCallback(GLFWwindow *w, int button, int action,
                                   int modsy) {}
  void virtual mousePosCallback(GLFWwindow *w, double x, double y) {}
  void virtual keyCallBack(GLFWwindow *w, float deltaTime) {}
  void virtual charCallback(GLFWwindow *w, unsigned int c) {}
};