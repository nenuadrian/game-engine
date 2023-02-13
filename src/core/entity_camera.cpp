#include "entity_camera.h"
#include "editor/editor_manager.h"
#include "shaders/shader_generator.h"

namespace Hades {
CameraEntity::CameraEntity() : ModelEntity() {}

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
} // namespace Hades
