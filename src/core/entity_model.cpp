#include "entity_model.h"
#include "GLFW/glfw3.h"
#include "camera.h"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "model_complex.h"
#include "nlohmann/json.hpp"
#include "shaders/shader_generator.h"
#include <iostream>

void ModelEntity::Init(bool running_, Window *window) {
  Entity::Init(running_, window);
  ShaderGenerator generator = ShaderGenerator();

  shader = new Shader();
  shader->Load(generator.generateVertexShader(true).c_str(),
               generator.generateFragmentShader(4).c_str());
  GL_CHECK(glUseProgram(shader->ID));
  GL_CHECK(glUniform1i(glGetUniformLocation(shader->ID, "texture_diffuse"), 0));
  GL_CHECK(
      glUniform1i(glGetUniformLocation(shader->ID, "texture_specular"), 1));
  GL_CHECK(glUniform1i(glGetUniformLocation(shader->ID, "texture_normal"), 2));
  GL_CHECK(glUniform1i(glGetUniformLocation(shader->ID, "texture_height"), 3));
  GL_CHECK(glUseProgram(0));

  if (model != nullptr) {
    model->Init();
  }
}

void ModelEntity::Draw(float deltaTime, Camera camera, glm::mat4 projection) {
  Entity::Draw(deltaTime, camera, projection);
  if (model != nullptr) {
    glUseProgram(shader->ID);
    shader->setMat4("projection", projection);
    glm::mat4 view = camera.GetViewMatrix();
    glm::mat4 modelMatrix = glm::mat4(1.0f);
    modelMatrix = glm::scale(modelMatrix, scale);

    modelMatrix = glm::translate(modelMatrix, glm::vec3(x, y, z));
    shader->setMat4("view", view);
    shader->setMat4("model", modelMatrix);
    model->Draw(shader->ID);
    GL_CHECK(glUseProgram(0));
  }
}

void ModelEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);

  if (ImGui::CollapsingHeader("Model Object")) {
    ImGui::Text("Model");
    if (model) {
      ImGui::Text("%s", model->id.c_str());
    }

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
          model->Init();
        }
      }

      if (ImGui::Button("Cancel")) {
        modelSelectionWindowOpen = false;
      }
      ImGui::End();
    }
  }

  if (shader != nullptr) {
    ImGui::Text("Shaders");
    if (ImGui::CollapsingHeader("Fragment Shader")) {
      ImGui::Text("%s", shader->fragmentShaderSource.c_str());
    }
    if (ImGui::CollapsingHeader("Vertex Shader")) {
      ImGui::Text("%s", shader->vertexShaderSource.c_str());
    }
  }
}

ModelEntity::ModelEntity() : Entity() {}

ModelEntity::ModelEntity(nlohmann::json data) : Entity(data) {
  if (data["model"]["type"] == "complex") {
    model = new ModelComplex();
    model->LoadJSON(data["model"]);
  }
}

nlohmann::json ModelEntity::JSON() {
  nlohmann::json data = Entity::JSON();
  if (model != nullptr) {
    data["model"] = model->JSON();
  }

  return data;
}

ModelEntity::~ModelEntity() {
  if (model)
    delete model;
  if (shader)
    delete shader;
}
