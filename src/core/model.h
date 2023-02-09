#pragma once

#include "nlohmann/json.hpp"
#include "shaders/shader.h"
#include <glm/glm.hpp>
#include <string>
#include <vector>

struct Vertex {
  glm::vec3 Position;
  glm::vec3 Normal;
  glm::vec2 TexCoords;
};

struct Texture {
  unsigned int id;
  std::string type;
  std::string path;
};

class Mesh {
public:
  std::vector<Vertex> vertices;
  std::vector<unsigned int> indices;
  std::vector<Texture> textures;

  Mesh(std::vector<Vertex> vertices, std::vector<unsigned int> indices,
       std::vector<Texture> textures);
  void Draw(Shader *shader);
  void Draw(int shaderProgram);
  unsigned int VAO, VBO, EBO;

private:
  void setupMesh();
};

class Model {
public:
  std::vector<Mesh> meshes;
  std::string id;
  std::string type;
  Model() {
    long int t = static_cast<long int>(time(NULL));
    id = "model" + std::to_string(t);
  }
  virtual void Init(){};
  virtual void Draw(Shader *shader){};
  virtual void Draw(GLuint shaderProgram){};
  virtual nlohmann::json JSON() { return nlohmann::json::object(); };
  virtual void LoadJSON(nlohmann::json data){};
};
