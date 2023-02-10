#pragma once
#include "entity.h"
#include "entity_model.h"
#include "model.h"
#include "nlohmann/json.hpp"
#include "window_opengl.h"
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>

class CameraEntity : public ModelEntity {

public:
  CameraEntity();
  CameraEntity(nlohmann::json data) : ModelEntity(data){};

  void EditorUI(World *loadedWorld) override;

  virtual void init(bool running_, Window *window) override {
    initBasicModel("camera");
    ModelEntity::init(running_, window);
  }

  std::string type() override { return "camera"; };
};