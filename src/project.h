#pragma once
#include "entity.h"
#include <cstddef>
#include <string>
#include <vector>

class Asset {

public:
  std::string name;
  std::string file;
  Asset(std::string file_);
};

class World {
public:
  std::string id;
  std::string name;
  std::vector<Asset *> assets;
  std::vector<Entity *> entities;
  World();
};

class Project {
public:
  std::string title;
  std::string mainWorldId;
  std::vector<Asset> globalAssets;
  std::vector<World *> worlds;
  Project();
  void Load(std::string directory);
  std::string NewWorld();
  void Save(std::string directory);
};