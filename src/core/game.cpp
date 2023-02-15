#include "game.h"
#include "core/entity_camera.h"
#include "entity.h"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "window.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <iostream>

namespace Hades {

void Game::mouseButtonCallback(int button, int action, int modsy) {}

void Game::mousePosCallback(double x, double y) {}

Game::Game(Project *project_, Events *events_) {
  project = project_;
  events = events_;
}

void Game::init() {
  World *world;
  for (World *w : project->worlds) {
    if (w->id == project->mainWorldId) {
      world = w;
      break;
    }
  }
  assert(world != nullptr);

  LoadWorld(world);
}

void Game::LoadWorld(World *newWorld) {
  world = newWorld;

  CameraEntity *defaultCamera = nullptr;

  world->init(project, window);

  defaultCamera = world->defaultCamera();

  if (defaultCamera == nullptr) {
    throw std::invalid_argument("Could not find main camera");
  }

  camera = &defaultCamera->camera;
}

void Game::draw(float deltaTime) {

  if (world != nullptr) {
    for (Entity *entity : world->entities) {
      glm::mat4 proj = glm::perspective(
          glm::radians(45.0f), (float)window->width / (float)window->height,
          0.1f, 100.0f);

      glm::mat4 view = camera->GetViewMatrix();

      entity->draw(deltaTime, view, proj);
    }
  }

  if (ImGui::BeginMainMenuBar()) {
    if (ImGui::BeginMenu("Game")) {
      if (ImGui::MenuItem("Stop")) {
        events->CLOSE_WINDOW = true;
      }

      ImGui::EndMenu();
    }
  }
  ImGui::EndMainMenuBar();
}

void Game::run() {
  window = new WindowOpengl(reinterpret_cast<WindowParent *>(this), events);
  window->init();
  init();
  window->run();
}

Game::~Game() { delete window; }

} // namespace Hades