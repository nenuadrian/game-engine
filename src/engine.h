
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
  Engine(){};
  void Run();
};

class Game : public InputHandler {
private:
  Camera camera;
  World *world;
  Project *project;

public:
  Game(Project *project);
  void Draw();
  void LoadWorld(std::string worldId);

  void scrollCallback(GLFWwindow *w, double x, double y) override {}

  void mouseButtonCallback(GLFWwindow *w, int button, int action,
                           int modsy) override {}
  void mousePosCallback(GLFWwindow *w, double x, double y) override {}
  void keyCallBack(GLFWwindow *w) override {}
  void charCallback(GLFWwindow *w, unsigned int c) override {}
};