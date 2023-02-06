#pragma once
#include "camera.h"
#include "model.h"
#include "nlohmann/json.hpp"
#include "shader.h"
#include <cstddef>
#include <string>
#include <vector>

class World;

class Entity {
public:
  std::string engineIdentifier;
  std::string id;
  std::string name;
  Entity *parent = nullptr;

  Entity();
  Entity(nlohmann::json data);

  virtual void Draw(Camera camera, glm::mat4 projection);
  virtual void EditorUI(World *loadedWorld);
  virtual nlohmann::json Save();
  virtual std::string type() { return "unknown"; };
};

class CameraEntity : public Entity {
public:
  CameraEntity();
  CameraEntity(nlohmann::json data) : Entity(data) {}
  void EditorUI(World *loadedWorld) override;

  std::string type() override { return "camera"; };
};

class ModelEntity : public Entity {
private:
  Model *model = nullptr;
  Shader *shader = nullptr;
  bool modelSelectionWindowOpen = false;

public:
  ModelEntity();
  ModelEntity(nlohmann::json data);
  std::string type() override { return "camera"; };
  void EditorUI(World *loadedWorld) override;
  void Draw(Camera camera, glm::mat4 projection) override;
  virtual nlohmann::json Save() override;

  ~ModelEntity();
};

class Asset {

public:
  std::string engineIdentifier;
  std::string id;
  std::string file;
  Asset(const char* file_);
  Asset(nlohmann::json data);
};

class World {
public:
  std::string id;
  std::string name;
  std::string defaultCameraEntityId = "";
  std::vector<Asset *> assets;
  std::vector<Entity *> entities;
  World();
  World(nlohmann::json data);
};