#pragma once

#include "model.h"
#include "shader.h"
#include <assimp/scene.h> // Output data structure
#include <glm/glm.hpp>
#include <string>
#include <vector>

class ModelComplex : public Model {
public:
  std::string path;

  ModelComplex(const char *path) {
    type = "complex";
    this->path = path;
    loadModel(path);
  }
  virtual void Draw(GLuint shaderProgram);
  virtual void Draw(Shader *shader);

private:
  void loadModel(std::string const &path);
  void processNode(aiNode *node, const aiScene *scene);
  Mesh processMesh(aiMesh *mesh, const aiScene *scene);
  std::vector<Texture> loadMaterialTextures(aiMaterial *mat, aiTextureType type,
                                            std::string typeName);
  GLint textureFromFile(const char *filename);
};
