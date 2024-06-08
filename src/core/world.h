#pragma once
#include "entity.h"
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>

namespace Hades
{
  class Project;
  class World
  {
  public:
    std::string id;
    std::string name;
    std::string mainCameraEntityId = "";
    std::vector<Entity *> entities;
    World();
    World(std::string id, std::string name, std::string mainCameraEntityId)
        : id(id), name(name), mainCameraEntityId(mainCameraEntityId){};
    void init(Project &project, Window *w);
    CameraEntity *defaultCamera();
    void addEntity(Entity *);
    ~World();
  };

} // namespace Hades