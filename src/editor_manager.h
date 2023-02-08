#pragma once

#include "events.h"
#include "imgui_impl_glfw.h"
#include "project.h"
#include "window_opengl.h"

#include <string>

class EditorManager : public WindowParent {
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

  void draw(float deltaTime) override;
  void scrollCallback(double x, double y) override;
  void mouseButtonCallback(int button, int action, int modsy) override;
  void mousePosCallback(double x, double y) override;
  void keyCallBack(float deltaTime) override;
  void charCallback(unsigned int c) override;
};