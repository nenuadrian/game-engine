#include "game.h"

Game::Game(GLFWwindow *w, Project *project_) {
  project = project_;
  LoadWorld(w);
}

void Game::LoadWorld(GLFWwindow *w) {
  Entity *defaultCamera = nullptr;
  for (World *w : project->worlds) {
    if (w->id == project->mainWorldId) {
      world = w;
      break;
    }
  }
  assert(world != nullptr);

  world->Init(project, w);
  for (Entity *entity : world->entities) {
    if (entity->engineIdentifier == world->defaultCameraEntityId) {
      defaultCamera = entity;
      break;
    }
  }
  assert(defaultCamera != nullptr);

  camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
}

void Game::Draw(float deltaTime) {
  if (world != nullptr) {
    for (Entity *entity : world->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);

      entity->Draw(deltaTime, camera, projection);
    }
  }
}