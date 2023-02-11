#include "entity_camera.h"
#include "shaders/shader_generator.h"
#include "editor/editor_manager.h"

CameraEntity::CameraEntity() : ModelEntity() {

}

void CameraEntity::EditorUI(EditorManager *editor) {
  Entity::EditorUI(editor);
  ImGui::Text("Camera");
  if (editor->loadedWorld->mainCameraEntityId != engineIdentifier) {
    if (ImGui::Button("Set as default camera")) {
      editor->loadedWorld->mainCameraEntityId = engineIdentifier;
    }
  }
  ImGui::InputFloat("Yaw", &camera.Yaw);
  ImGui::InputFloat("Pitch", &camera.Pitch);
  camera.Position = position;
}

nlohmann::json CameraEntity::JSON() {
  nlohmann::json data = ModelEntity::JSON();
  data["yaw"] = camera.Yaw;
  data["pitch"] = camera.Pitch;
  return data;
}