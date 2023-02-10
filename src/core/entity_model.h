#pragma once
#include "model.h"
#include "project.h"
#include "shaders/shader.h"
#include "window.h"
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
  void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) override;
  virtual nlohmann::json JSON() override;
  void Init(bool running_, Window *window) override;
  ~ModelEntity();
};