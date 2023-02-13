#include "project.h"
#include "entities.h"
#include "entity_model.h"
#include "model_complex.h"
#include <ctime>
#include <fstream>

Project::Project() {}


std::string Project::NewWorld() {
  World *world = new World();
  worlds.push_back(world);

  return world->id;
}

Project::~Project() {
  for (auto world : worlds) {
    delete world;
  }

  for (auto asset : assets) {
    delete asset;
  }
}