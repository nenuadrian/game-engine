#include "entity_model.h"
#include "GLFW/glfw3.h"
#include "camera.h"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "model_complex.h"
#include "nlohmann/json.hpp"
#include <iostream>

void ModelEntity::Init(bool running_, Window *window) {
  Entity::Init(running_, window);

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

void ModelEntity::Draw(float deltaTime, Camera camera, glm::mat4 projection) {
  Entity::Draw(deltaTime, camera, projection);

  glUseProgram(shader->ID);
  shader->setMat4("projection", projection);
  glm::mat4 view = camera.GetViewMatrix();
  glm::mat4 modelPosition = glm::mat4(1.0f);
  modelPosition = glm::translate(modelPosition, glm::vec3(x, y, z));
  shader->setMat4("view", view);
  shader->setMat4("model", modelPosition);
  model->Draw(shader->ID);
  GL_CHECK(glUseProgram(0));
}

void ModelEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Model");
  ImGui::Text("%s", model->name.c_str());

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

ModelEntity::ModelEntity() : Entity() { name = "Model"; }

ModelEntity::ModelEntity(nlohmann::json data) : Entity(data) {}

nlohmann::json ModelEntity::JSON() {
  nlohmann::json data = Entity::JSON();

  return data;
}

ModelEntity::~ModelEntity() {
  delete model;
  delete shader;
}
