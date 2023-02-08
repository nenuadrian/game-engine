#include "events.h"
#include "window.h"
#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include "events.h"
#include "project.h"
#include "window_opengl.h"
#include <cstddef>

class Game : public WindowParent {
private:
  Camera camera;
  World *world;
  Project *project;
  Events *events;
  Window *window;
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;

public:
  Game(Project *project, Events *_events);
  void Init();
  void LoadWorld(World *newWorld);
  void Run();

  void draw(float deltaTime) override;
  void scrollCallback(double x, double y) override {}
  void mouseButtonCallback(int button, int action, int modsy) override;
  void mousePosCallback(double x, double y) override;
  void keyCallBack(float deltaTime) override {}
};