#pragma once

#include "model.h"
#include "shader.h"
#include <assimp/scene.h> // Output data structure
#include <glm/glm.hpp>
#include <string>
#include <vector>

class ModelComplex : public Model {
private:
  void loadModel(std::string const &path);
  void processNode(aiNode *node, const aiScene *scene);
  Mesh processMesh(aiMesh *mesh, const aiScene *scene);
  std::vector<Texture> loadMaterialTextures(aiMaterial *mat, aiTextureType type,
                                            std::string typeName);
  GLint textureFromFile(const char *filename);

public:
  std::string path;

  ModelComplex(const char *path) {
    type = "complex";
    this->path = path;
    loadModel(path);
  }

  ModelComplex(std::string path) : ModelComplex(path.c_str()) {}
  virtual void Draw(GLuint shaderProgram);
  virtual void Draw(Shader *shader);
  ~ModelComplex();
};
