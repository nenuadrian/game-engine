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

public:
  Camera camera;

  CameraEntity();
  CameraEntity(nlohmann::json data) : ModelEntity(data) {
    camera.Yaw = data["yaw"];
    camera.Pitch = data["pitch"];
    camera.updateCameraVectors();
  };

  void EditorUI(EditorManager *editor) override;

  virtual void init(bool running_, Window *window) override {
    if (!running_) {
      initBasicModel("camera");
    }
    ModelEntity::init(running_, window);
    camera.Position = position;
    camera.updateCameraVectors();
  }
  virtual nlohmann::json JSON() override;
  std::string type() override { return "camera"; };
};