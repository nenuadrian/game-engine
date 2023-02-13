#pragma once

#include "model.h"
#include "model_complex.h"
#include "shaders/shader.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <iostream>
#include <string>
#include <vector>
namespace Hades {
class ModelBasic : public ModelComplex {

public:
  std::string shape;
  std::string path;
  ModelBasic(std::string _shape) : ModelComplex() {
    type = "basic";
    shape = _shape;
  };

  void init() override {
    std::vector<Vertex> vertices;
    if (shape == "cube") {
      vertices = {// Front face
                  {{-0.5f, -0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f}},
                  {{0.5f, -0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}, {1.0f, 0.0f}},
                  {{0.5f, 0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}, {1.0f, 1.0f}},
                  {{0.5f, 0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}, {1.0f, 1.0f}},
                  {{-0.5f, 0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}, {0.0f, 1.0f}},
                  {{-0.5f, -0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}, {0.0f, 0.0f}},

                  // Back face
                  {{-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f, -1.0f}, {1.0f, 0.0f}},
                  {{-0.5f, 0.5f, -0.5f}, {0.0f, 0.0f, -1.0f}, {1.0f, 1.0f}},
                  {{0.5f, 0.5f, -0.5f}, {0.0f, 0.0f, -1.0f}, {0.0f, 1.0f}},
                  {{0.5f, 0.5f, -0.5f}, {0.0f, 0.0f, -1.0f}, {0.0f, 1.0f}},
                  {{0.5f, -0.5f, -0.5f}, {0.0f, 0.0f, -1.0f}, {0.0f, 0.0f}},
                  {{-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f, -1.0f}, {1.0f, 0.0f}},

                  // Left face
                  {{-0.5f, 0.5f, 0.5f}, {-1.0f, 0.0f, 0.0f}, {1.0f, 0.0f}},
                  {{-0.5f, 0.5f, -0.5f}, {-1.0f, 0.0f, 0.0f}, {1.0f, 1.0f}},
                  {{-0.5f, -0.5f, -0.5f}, {-1.0f, 0.0f, 0.0f}, {0.0f, 1.0f}},
                  {{-0.5f, -0.5f, -0.5f}, {-1.0f, 0.0f, 0.0f}, {0.0f, 1.0f}},
                  {{-0.5f, -0.5f, 0.5f}, {-1.0f, 0.0f, 0.0f}, {0.0f, 0.0f}},
                  {{-0.5f, 0.5f, 0.5f}, {-1.0f, 0.0f, 0.0f}, {1.0f, 0.0f}},

                  // Right face
                  {{0.5f, 0.5f, 0.5f}, {1.0f, 0.0f, 0.0f}, {1.0f, 0.0f}},
                  {{0.5f, -0.5f, 0.5f}, {1.0f, 0.0f, 0.0f}, {0.0f, 0.0f}},
                  {{0.5f, -0.5f, -0.5f}, {1.0f, 0.0f, 0.0f}, {0.0f, 1.0f}},
                  {{0.5f, -0.5f, -0.5f}, {1.0f, 0.0f, 0.0f}, {0.0f, 1.0f}},
                  {{0.5f, 0.5f, -0.5f}, {1.0f, 0.0f, 0.0f}, {1.0f, 1.0f}},
                  {{0.5f, 0.5f, 0.5f}, {1.0f, 0.0f, 0.0f}, {1.0f, 0.0f}},

                  // Top face
                  {{-0.5f, 0.5f, 0.5f}, {0.0f, 1.0f, 0.0f}, {0.0f, 1.0f}},
                  {{0.5f, 0.5f, 0.5f}, {0.0f, 1.0f, 0.0f}, {1.0f, 1.0f}},
                  {{0.5f, 0.5f, -0.5f}, {0.0f, 1.0f, 0.0f}, {1.0f, 0.0f}},
                  {{0.5f, 0.5f, -0.5f}, {0.0f, 1.0f, 0.0f}, {1.0f, 0.0f}},
                  {{-0.5f, 0.5f, -0.5f}, {0.0f, 1.0f, 0.0f}, {0.0f, 0.0f}},
                  {{-0.5f, 0.5f, 0.5f}, {0.0f, 1.0f, 0.0f}, {0.0f, 1.0f}},

                  // Bottom face
                  {{-0.5f, -0.5f, -0.5f}, {0.0f, -1.0f, 0.0f}, {0.0f, 1.0f}},
                  {{0.5f, -0.5f, -0.5f}, {0.0f, -1.0f, 0.0f}, {1.0f, 1.0f}},
                  {{0.5f, -0.5f, 0.5f}, {0.0f, -1.0f, 0.0f}, {1.0f, 0.0f}},
                  {{0.5f, -0.5f, 0.5f}, {0.0f, -1.0f, 0.0f}, {1.0f, 0.0f}},
                  {{-0.5f, -0.5f, 0.5f}, {0.0f, -1.0f, 0.0f}, {0.0f, 0.0f}},
                  {{-0.5f, -0.5f, -0.5f}, {0.0f, -1.0f, 0.0f}, {0.0f, 1.0f}}};
    } else if (shape == "camera") {
      const float near = 0.1f;
      const float far = 100.0f;
      const float aspect = (float)600 / (float)800;
      const float fov = glm::radians(45.0f);
      const glm::mat4 projection = glm::perspective(fov, aspect, near, far);

      // Near plane
      glm::vec3 nc = glm::vec3(0, 0, -near);
      glm::vec3 ntl = nc + glm::vec3(-1, 1, 0) * near * tan(fov / 2.0f);
      glm::vec3 ntr = nc + glm::vec3(1, 1, 0) * near * tan(fov / 2.0f);
      glm::vec3 nbl = nc + glm::vec3(-1, -1, 0) * near * tan(fov / 2.0f);
      glm::vec3 nbr = nc + glm::vec3(1, -1, 0) * near * tan(fov / 2.0f);

      // Far plane
      glm::vec3 fc = glm::vec3(0, 0, -far);
      glm::vec3 ftl = fc + glm::vec3(-1, 1, 0) * far * tan(fov / 2.0f);
      glm::vec3 ftr = fc + glm::vec3(1, 1, 0) * far * tan(fov / 2.0f);
      glm::vec3 fbl = fc + glm::vec3(-1, -1, 0) * far * tan(fov / 2.0f);
      glm::vec3 fbr = fc + glm::vec3(1, -1, 0) * far * tan(fov / 2.0f);

      // Normals
      glm::vec3 front = glm::vec3(0, 0, 1);
      glm::vec3 back = glm::vec3(0, 0, -1);
      glm::vec3 top = glm::vec3(0, 1, 0);
      glm::vec3 bottom = glm::vec3(0, -1, 0);
      glm::vec3 left = glm::vec3(-1, 0, 0);
      glm::vec3 right = glm::vec3(1, 0, 0);

      // Texture coordinates
      glm::vec2 texCoord = glm::vec2(0.0f, 0.0f);

      vertices = {{ntl, front, glm::vec2(0.0f, 1.0f)},
                  {ntr, front, glm::vec2(1.0f, 1.0f)},
                  {nbl, front, glm::vec2(0.0f, 0.0f)},
                  {nbr, front, glm::vec2(1.0f, 0.0f)},
                  {ftl, back, glm::vec2(0.0f, 1.0f)},
                  {ftr, back, glm::vec2(1.0f, 1.0f)},
                  {fbl, back, glm::vec2(0.0f, 0.0f)},
                  {fbr, back, glm::vec2(1.0f, 0.0f)},
                  {ntr, top, glm::vec2(0.0f, 1.0f)},
                  {ntl, top, glm::vec2(1.0f, 1.0f)},
                  {ftl, top, glm::vec2(0.0f, 0.0f)},
                  {ftr, top, glm::vec2(1.0f, 0.0f)},
                  {nbl, bottom, glm::vec2(0.0f, 1.0f)},
                  {nbr, bottom, glm::vec2(1.0f, 1.0f)},
                  {fbr, bottom, glm::vec2(0.0f, 0.0f)},
                  {fbl, bottom, glm::vec2(1.0f, 0.0f)},
                  {nbr, right, glm::vec2(0.0f, 1.0f)},
                  {ntr, right, glm::vec2(1.0f, 1.0f)},
                  {ftr, right, glm::vec2(0.0f, 0.0f)},
                  {fbr, right, glm::vec2(1.0f, 0.0f)},
                  {ntl, left, glm::vec2(0.0f, 1.0f)},
                  {nbl, left, glm::vec2(1.0f, 1.0f)},
                  {fbl, left, glm::vec2(0.0f, 0.0f)},
                  {ftl, left, glm::vec2(1.0f, 0.0f)}};
    } else if (type == "axis") {
      vertices = {{glm::vec3(-0.5f, -0.5f, 0.0f), glm::vec3(0.0f, 0.0f, 1.0f),
                   glm::vec2(0.0f, 0.0f)},
                  {glm::vec3(0.5f, -0.5f, 0.0f), glm::vec3(0.0f, 0.0f, 1.0f),
                   glm::vec2(1.0f, 0.0f)},
                  {glm::vec3(0.5f, 0.5f, 0.0f), glm::vec3(0.0f, 0.0f, 1.0f),
                   glm::vec2(1.0f, 1.0f)},
                  {glm::vec3(-0.5f, 0.5f, 0.0f), glm::vec3(0.0f, 0.0f, 1.0f),
                   glm::vec2(0.0f, 1.0f)}};
    }

    std::vector<unsigned int> indices;
    std::vector<Texture> textures;

    Mesh mesh = Mesh(vertices, indices, textures);
    meshes.push_back(mesh);
  }
};

} // namespace Hades