#include "events.h"
#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include "input_handler.h"
#include "project.h"
#include <cstddef>
#include <string>

class Game : public InputHandler {
private:
  Camera camera;
  World *world;
  Project *project;
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;

public:
  Game(GLFWwindow *w, Project *project);
  void Draw(float deltaTime);
  void LoadWorld(GLFWwindow *w);

  void scrollCallback(GLFWwindow *w, double x, double y) override {}

  void mouseButtonCallback(GLFWwindow *w, int button, int action,
                           int modsy) override {}
  void mousePosCallback(GLFWwindow *w, double x, double y) override {}
  void keyCallBack(GLFWwindow *w, float deltaTime) override {}
  void charCallback(GLFWwindow *w, unsigned int c) override {}
};