#pragma once

#include "imgui_internal.h"
#include "window.h"
class GLFWwindow;

namespace Hades {

class WindowOpengl : public Window {

public:
  GLFWwindow *w;

  WindowOpengl(WindowParent *parent, Events *events) : Window(parent, events) {}

  void init() override;
  void run() override;
  bool keyPressed(int code) override;
  ~WindowOpengl() override;
};

} // namespace Hades