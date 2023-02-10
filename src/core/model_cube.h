#pragma once

#include "model.h"
#include "shaders/shader.h"
#include <assimp/scene.h> // Output data structure
#include <glm/glm.hpp>
#include <string>
#include <vector>

class ModelCube : public Model {

public:
  std::string path;
  ModelCube() : Model() { type = "cube"; }

  void Init() override {}

  void Draw(GLuint shaderProgram) override {}
  void Draw(Shader *shader) override {}

  ~ModelCube() {}
};
