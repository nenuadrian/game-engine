#pragma once

#include "imgui_internal.h"
#include "window.h"

class GLFWwindow;

class WindowOpengl : public Window {

public:
  GLFWwindow *w;

  WindowOpengl(WindowParent *parent, Events *events) : Window(parent, events) {}

  void Init() override;
  void Run() override;
  bool keyPressed(int code) override;
  ~WindowOpengl() override;
};
