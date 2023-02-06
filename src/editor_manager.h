#pragma once

#include "project.h"
#include "GLFW/glfw3.h"

#include <cstddef>
#include <string>
#include <vector>

class EditorManager {
private:
  int selectedEntity = -1;
public:
  Project *project = nullptr;
  World *loadedWorld = nullptr;
  bool playing = false;
  EditorManager();

  void Load();
  void NewProject();
  void RenderUI(GLFWwindow *window);
  void SelectWorld(std::string worldId);
};