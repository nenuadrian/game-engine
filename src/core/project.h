#pragma once
#include <cstddef>
#include <string>
#include <vector>
#include "entity.h"


class Project {
public:
  std::string name;
  std::string mainWorldId;
  std::vector<Asset*> assets;
  std::vector<World *> worlds;
  Project();

  void save(std::string directory);

  std::string NewWorld();

  ~Project();
};