#pragma once
#include "camera.h"
#include "model.h"
#include "nlohmann/json.hpp"
#include "shader.h"
#include <cstddef>
#include <string>
#include <vector>

class Entity {
public:
  std::string engineIdentifier;
  std::string id;
  std::string name;
  Entity *parent = nullptr;

  Entity();
  Entity(nlohmann::json data);

  virtual void Draw(Camera camera, glm::mat4 projection);
  virtual void EditorUI();
  virtual nlohmann::json Save();
  virtual std::string type() { return "unknown"; };

};

class CameraEntity : public Entity {
public:
  CameraEntity();
  CameraEntity(nlohmann::json data) : Entity(data) {}
  void EditorUI() override;
  std::string type() override { return "camera"; };
};

class ModelEntity : public Entity {
private:
  Model *model = nullptr;
  Shader *shader = nullptr;

public:
  ModelEntity();
  ModelEntity(nlohmann::json data);
  std::string type() override { return "camera"; };
  void EditorUI() override;
  void Draw(Camera camera, glm::mat4 projection) override;
  virtual nlohmann::json Save() override;

  ~ModelEntity();

};
