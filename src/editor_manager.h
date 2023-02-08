#pragma once

#include "GLFW/glfw3.h"
#include "events.h"
#include "imgui_impl_glfw.h"
#include "project.h"

#include <string>

class EditorManager {
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
};