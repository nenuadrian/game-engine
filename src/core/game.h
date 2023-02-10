#include "events.h"
#include "window.h"

#include "editor/camera.h"

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

public:
  Game(Project *project, Events *_events);
  void init();
  void LoadWorld(World *newWorld);
  void run();

  void draw(float deltaTime) override;
  void scrollCallback(double x, double y) override {}
  void mouseButtonCallback(int button, int action, int modsy) override;
  void mousePosCallback(double x, double y) override;
};