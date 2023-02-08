#pragma once

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
  WindowParent *parent;

public:
  Window(WindowParent *_parent) { parent = _parent; }

  virtual void Init();
  virtual void Run();
};
