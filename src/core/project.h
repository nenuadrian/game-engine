#pragma once
#include "entity.h"
#include "world.h"
#include <cstddef>
#include <map>
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
    std::map<std::string, World *> worlds;
    Project() : directory_path() {}

    World *NewWorld();
    void Save();

    ~Project();
  };
} // namespace Hades