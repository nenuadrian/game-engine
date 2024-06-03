#include "world.h"

namespace Hades
{

  World::World()
  {
    id = std::to_string(Engine::newEngineId());
    name = "Untitled";
  }

  void World::addEntity(Entity *entity) { entities.push_back(entity); }

  World::~World()
  {
    for (Entity *entity : entities)
    {
      delete entity;
    }
  }

} // namespace Hades