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

  void load(std::string dataFile);
  void save(std::string directory);
  void LoadJSON(std::string json);
  std::string JSON();
  std::string NewWorld();

  ~Project();
};