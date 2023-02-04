#include "glad/glad.h"

#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

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

  void SelectWorld(World *world);
};

class Engine {
  EditorManager editorManager;
  void RenderUI(GLFWwindow *window);

public:
  Engine();
  void Run();
};