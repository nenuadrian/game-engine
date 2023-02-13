#pragma once

#include "nlohmann/json.hpp"
#include "engine.h"
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
  void draw(Shader *shader);
  void draw(int shaderProgram);

private:
  unsigned int VAO, VBO, EBO;

  void setupMesh();
};

class Model {
protected:
  std::vector<Mesh> meshes;

public:
  std::string id;
  std::string type;
  Model() { id = "model" + std::to_string(Engine::newEngineId()); }
  virtual void init(){};
  virtual void draw(Shader *shader){};
  virtual void draw(GLuint shaderProgram){};
  virtual nlohmann::json JSON() { return nlohmann::json::object(); };
  virtual void LoadJSON(nlohmann::json data){};
};
