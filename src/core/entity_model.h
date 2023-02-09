#pragma once
#include "project.h"
#include "model.h"
#include "window.h"
#include "shader.h"
#include <string>
#include <vector>

class ModelEntity : public Entity {
private:
  Model *model = nullptr;
  Shader *shader = nullptr;
  bool modelSelectionWindowOpen = false;

public:
  ModelEntity();
  ModelEntity(nlohmann::json data);
  std::string type() override { return "model"; };
  void EditorUI(World *loadedWorld) override;
  void Draw(float deltaTime, Camera camera, glm::mat4 projection) override;
  virtual nlohmann::json JSON() override;
  void Init(bool running_, Window *window) override;
  ~ModelEntity();
};