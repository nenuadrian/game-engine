#pragma once
#include "entity.h"
#include "world.h"
#include <cstddef>
#include <string>
#include <vector>
#include "core/asset.h"

namespace Hades {
class Project {
public:
  std::string name = "untitled";
  std::string mainWorldId;
  std::vector<Asset *> assets;
  std::vector<World *> worlds;
  Project();

  void save(std::string directory);

  std::string NewWorld();

  ~Project();
};
} // namespace Hades