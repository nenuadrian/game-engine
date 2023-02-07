
#include "events.h"
#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include <string>
#include <vector>

class Engine {
  Events events;
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;

public:
  Engine(){};
  void Editor();
  void RunGame();
  void RunEditor();
};
