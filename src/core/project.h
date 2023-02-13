#pragma once
#include "entity.h"
#include <cstddef>
#include <string>
#include <vector>

namespace Hades {
class Project {
public:
  std::string name;
  std::string mainWorldId;
  std::vector<Asset *> assets;
  std::vector<World *> worlds;
  Project();

  void save(std::string directory);

  std::string NewWorld();

  ~Project();
};
} // namespace Hades