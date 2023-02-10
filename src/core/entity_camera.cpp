#include "entity_camera.h"
#include "shaders/shader_generator.h"

CameraEntity::CameraEntity() : ModelEntity() {

}

void CameraEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Camera");
  if (loadedWorld->mainCameraEntityId != engineIdentifier) {
    if (ImGui::Button("Set as default camera")) {
      loadedWorld->mainCameraEntityId = engineIdentifier;
    }
  }
}
