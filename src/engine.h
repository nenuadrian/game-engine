#include "glad/glad.h"

#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include "editor_manager.h"
#include "project.h"
#include <cstddef>
#include <string>
#include <vector>

class Engine {
  EditorManager editorManager;

public:
  Engine();
  void Run();
};