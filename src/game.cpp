#include "game.h"
#include "glm/fwd.hpp"
#include "window.h"

void Game::mouseButtonCallback(int button, int action, int modsy) {}

void Game::mousePosCallback(double x, double y) {}

Game::Game(Project *project_, Events *events_) {
  project = project_;
  events = events_;
}

void Game::Init() {
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

  world->Init(project, window);
  for (Entity *entity : world->entities) {
    if (entity->engineIdentifier == world->mainCameraEntityId) {
      defaultCamera = entity;
      break;
    }
  }
  assert(defaultCamera != nullptr);

  camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
}

void Game::draw(float deltaTime) {
  GL_CHECK(glEnable(GL_DEPTH_TEST));
  GL_CHECK(glDepthFunc(GL_LESS));

  GL_CHECK(glClearColor(114, 144, 154, 0));
  GL_CHECK(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));

  if (world != nullptr) {
    for (Entity *entity : world->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);

      entity->Draw(deltaTime, camera, projection);
    }
  }

  ImGui_ImplOpenGL3_NewFrame();
  ImGui_ImplGlfw_NewFrame();
  ImGui::NewFrame();

  if (ImGui::BeginMainMenuBar()) {
    if (ImGui::BeginMenu("Game")) {
      if (ImGui::MenuItem("Stop")) {
        events.RUN_EDITOR = true;
        events.CLOSE_GAME = true;
      }

      ImGui::EndMenu();
    }
  }
  ImGui::EndMainMenuBar();
  ImGui::Render();
  ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}

void Game::Run() {

  window = new WindowOpengl(reinterpret_cast<WindowParent *>(this));

  window->Init();

  Init();

  window->Init();

  window->Run();

  delete window;

  events->CLOSE_GAME = false;
}