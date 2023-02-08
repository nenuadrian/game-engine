#include "events.h"
#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include "input_handler.h"
#include "project.h"
#include "events.h"
#include <cstddef>
#include <string>

class Game : public InputHandler {
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

  void scrollCallback(GLFWwindow *w, double x, double y) override {}

  void mouseButtonCallback(GLFWwindow *w, int button, int action,
                           int modsy) override {}
  void mousePosCallback(GLFWwindow *w, double x, double y) override {}
  void keyCallBack(GLFWwindow *w, float deltaTime) override {}
  void charCallback(GLFWwindow *w, unsigned int c) override {}
};