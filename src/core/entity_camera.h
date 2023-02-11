#pragma once
#include "core/camera.h"
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
  Camera camera;

public:
  CameraEntity();
  CameraEntity(nlohmann::json data) : ModelEntity(data){};

  void EditorUI(World *loadedWorld) override;

  virtual void init(bool running_, Window *window) override {
    initBasicModel("camera");
    ModelEntity::init(running_, window);
    camera.Position = position;
  }

  std::string type() override { return "camera"; };
};