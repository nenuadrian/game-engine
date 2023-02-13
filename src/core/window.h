#pragma once

#include "events.h"

namespace Hades {
class WindowParent {
public:
  void virtual draw(float deltaTime) {}
  void virtual scrollCallback(double x, double y) {}
  void virtual mouseButtonCallback(int button, int action, int modsy) {}
  void virtual mousePosCallback(double x, double y) {}
  void virtual keyCallBack(float deltaTime) {}
  void virtual charCallback(unsigned int c) {}
};

class Window {

public:
  WindowParent *parent;
  Events *events;
  int width = 800, height = 600;

  Window(WindowParent *_parent, Events *_events) {
    parent = _parent;
    events = _events;
  }

  virtual void init() {}
  virtual void run() {}
  virtual bool keyPressed(int code) { return false; }

  virtual ~Window() {}
};

} // namespace Hades