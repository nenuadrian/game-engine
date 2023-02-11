#pragma once
#include "core/camera.h"
#include "core/events.h"
#include "core/project.h"
#include "core/window_opengl.h"
#include <chrono>

class EditorManager : public WindowParent {
private:
  Entity* selectedEntity = nullptr;
  Events *events;
  Window *window;
  bool showDebugStats;

  std::chrono::time_point<std::chrono::steady_clock> t_start =
      std::chrono::high_resolution_clock::now();
  int last_fps = 0;
  int frame_count = 0;
  std::chrono::time_point<std::chrono::steady_clock> t_one_second =
      t_start + std::chrono::seconds(1);
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;
  Camera camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
  float lastX = SCR_WIDTH / 2.0f;
  float lastY = SCR_HEIGHT / 2.0f;
  bool firstMouse = true;
  Project *project = nullptr;
  World *loadedWorld = nullptr;
  bool processCamera = false;

  void RenderMenuBarUI();

public:
  EditorManager(Events *events);

  void run();
  void Open();
  void load(Project *newProject);
  void NewProject();
  void RenderUI();
  void SelectWorld(std::string worldId);

  void draw(float deltaTime) override;
  void scrollCallback(double x, double y) override;
  void mouseButtonCallback(int button, int action, int modsy) override;
  void mousePosCallback(double x, double y) override;
};