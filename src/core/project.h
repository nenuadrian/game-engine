#pragma once
#include "entity.h"
#include "world.h"
#include <cstddef>
#include <string>
#include <vector>
#include "core/asset.h"

namespace Hades
{
  class Project
  {
  public:
    std::string name = "Untitled";
    std::string directory_path;
    std::string mainWorldId;
    std::vector<Asset *> assets;
    std::vector<World *> worlds;
    Project() : directory_path() {}

    std::string NewWorld();

    ~Project();
  };
} // namespace Hades