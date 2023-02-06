#include "entity.h"
#include "camera.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "model_complex.h"

Entity::Entity() {
  long int t = static_cast<long int>(time(NULL));
  engineIdentifier = std::to_string(t);
  id = std::to_string(t);
  name = "Untitled";
}

nlohmann::json Entity::Save() {
  nlohmann::json entityData = nlohmann::json::object();
  entityData["id"] = id;
  entityData["name"] = name;
  entityData["type"] = type();
  entityData["engineIdentifier"] = engineIdentifier;
  return entityData;
}

Entity::Entity(nlohmann::json data) : Entity() {
  name = data["name"];
  id = data["id"];
  engineIdentifier = data["engineIdentifier"];
}

ModelEntity::ModelEntity() : Entity() {
  name = "Model";

  shader = new Shader("../sample_project/3.3.shader.vs",
                      "../sample_project/3.3.shader.fs");
  GL_CHECK(glUseProgram(shader->ID));
  GL_CHECK(glUniform1i(
      glGetUniformLocation(shader->ID, std::string("texture_diffuse").c_str()),
      0));
  GL_CHECK(glUniform1i(
      glGetUniformLocation(shader->ID, std::string("texture_specular").c_str()),
      1));
  GL_CHECK(glUseProgram(0));

  model =
      new ModelComplex("../sample_project/backpack/12305_backpack_v2_l3.obj");
}

CameraEntity::CameraEntity() : Entity() { name = "camera"; }

void Entity::Draw(Camera camera, glm::mat4 projection) {}

void ModelEntity::Draw(Camera camera, glm::mat4 projection) {
  glUseProgram(shader->ID);
  shader->setMat4("projection", projection);
  glm::mat4 view = camera.GetViewMatrix();
  shader->setMat4("view", view);
  glm::mat4 modelT = glm::mat4(1.0f);
  shader->setMat4("model", modelT);
  model->Draw(shader->ID);
  GL_CHECK(glUseProgram(0));
}

void ModelEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Model");
  ImGui::Text(model->name.c_str());

  if (ImGui::Button("Change Model")) {
    modelSelectionWindowOpen = true;
  }

  if (modelSelectionWindowOpen) {
    ImGui::Begin("Select Model");
    for (Asset *asset : loadedWorld->assets) {
      if (ImGui::Button((asset->id + " | " + asset->file + "##ent" +
                         engineIdentifier + "asset" + asset->id)
                            .c_str())) {
        modelSelectionWindowOpen = false;
        delete model;
        model = new ModelComplex(asset->file);
      }
    }

    if (ImGui::Button("Cancel")) {
      modelSelectionWindowOpen = false;
    }
    ImGui::End();
  }
}

void CameraEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Camera");
  if (loadedWorld->defaultCameraEntityId != engineIdentifier) {
    if (ImGui::Button("Set as default camera")) {
      loadedWorld->defaultCameraEntityId = engineIdentifier;
    }
  }
}

void Entity::EditorUI(World *loadedWorld) {
  ImGui::Text("EngineID");
  ImGui::Text(engineIdentifier.c_str());
  ImGui::InputText("ID", &id);
  ImGui::InputText("Name", &name);
}

ModelEntity::ModelEntity(nlohmann::json data) : Entity(data) {}

nlohmann::json ModelEntity::Save() {
  nlohmann::json data = Entity::Save();

  return data;
}

ModelEntity::~ModelEntity() {
  delete model;
  delete shader;
}

World::World() {
  long int t = static_cast<long int>(time(NULL));

  id = std::to_string(t);
  name = "Untitled";
}

World::World(nlohmann::json data) : World() {
  id = data["id"];
  name = data["name"];
  defaultCameraEntityId = data["defaultCameraEntityId"];
}

Asset::Asset(nlohmann::json data) {
  file = data["file"];
  id = data["id"];
  engineIdentifier = data["engineIdentifier"];
}

Asset::Asset(const char *file_) {
  file = file_;
  long int t = static_cast<long int>(time(NULL));
  engineIdentifier = std::to_string(t);
  id = std::to_string(t);
}
