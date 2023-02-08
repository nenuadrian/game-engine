#include "events.h"
#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include "project.h"
#include "events.h"
#include <cstddef>
#include <string>

class Game {
private:
  Camera camera;
  World *world;
  Project *project;
  Events *events;
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;

public:
  Game(Project *project, Events* _events);
  void Draw(float deltaTime);
  void Init(GLFWwindow *w);
  void LoadWorld(GLFWwindow *w);
  void Run();


};