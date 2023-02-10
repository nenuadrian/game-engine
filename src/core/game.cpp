#include "game.h"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "window.h"
#include <iostream>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

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

  Entity *defaultCamera = nullptr;

  world->init(project, window);
  auto cam = std::find_if(world->entities.begin(), world->entities.end(),
                          [newWorld](Entity *entity) {
                            return entity->engineIdentifier ==
                                   newWorld->mainCameraEntityId;
                          });

  if (cam == world->entities.end()) {
    throw std::invalid_argument("Could not find main camera");
  } else {
    defaultCamera = *cam;
  }

  camera = Camera(defaultCamera->position);
}

void Game::draw(float deltaTime) {

  if (world != nullptr) {
    for (Entity *entity : world->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)window->width / (float)window->height, 0.1f, 100.0f);
      glm::mat4 view = camera.GetViewMatrix();

      entity->draw(deltaTime, view, projection);
    }
  }

  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();

  if (ImGui::BeginMainMenuBar()) {
    if (ImGui::BeginMenu("Game")) {
      if (ImGui::MenuItem("Stop")) {
        events->RUN_EDITOR = true;
        events->CLOSE_WINDOW = true;
      }

      ImGui::EndMenu();
    }
  }
  ImGui::EndMainMenuBar();
  ImGui::Render();
  ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}

void Game::run() {

  window = new WindowOpengl(reinterpret_cast<WindowParent *>(this), events);

  window->init();

  init();

  window->run();

  delete window;
}
