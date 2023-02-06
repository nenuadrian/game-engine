#pragma once
#include <cstddef>
#include <string>
#include <vector>
#include "entity.h"


class Project {
public:
  std::string title;
  std::string mainWorldId;
  std::vector<Asset> globalAssets;
  std::vector<World *> worlds;
  Project();
  void Load(std::string directory);
  void Save(std::string directory);
  std::string NewWorld();
};