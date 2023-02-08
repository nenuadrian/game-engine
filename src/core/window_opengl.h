#pragma once
#include "GLFW/glfw3.h"
#include "imgui_internal.h"
#include "window.h"

class WindowOpengl : public Window {
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;
  ImGuiContext *imGuiContext;

public:
  GLFWwindow *w;

  WindowOpengl(WindowParent *parent, Events *events) : Window(parent, events) {}

  void Init() override;
  void Run() override;
  ~WindowOpengl() override;
};
