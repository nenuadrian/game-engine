#pragma once

#include "GLFW/glfw3.h"
#include "project.h"
#include <cstddef>
#include <string>
#include <vector>

class EditorManager {

public:
  Project *project = nullptr;
  World *loadedWorld = nullptr;
  bool playing = false;
  EditorManager();

  void Load();
  void NewProject();
  void RenderUI(GLFWwindow *window);
  void SelectWorld(World *world);
};