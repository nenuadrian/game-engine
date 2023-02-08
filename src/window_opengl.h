#pragma once
#include "GLFW/glfw3.h"
#include "window.h"

class WindowOpengl : public Window {
  GLFWwindow *window;

public:
  WindowOpengl(WindowParent *_parent) : Window(_parent) {}

  void Init() override;
  void Run() override;
  ~WindowOpengl();
};
