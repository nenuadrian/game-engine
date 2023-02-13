#include "shader_generator.h"

namespace Hades {
std::string ShaderGenerator::generateFragmentShader(int textureCount) {
  std::string shader = "#version 330 core\n\n";
  shader += "in vec2 TexCoord;\n\n";
  shader += "out vec4 outColor;\n\n";

  for (int i = 0; i < textureCount; ++i) {
    shader += "uniform sampler2D texture" + std::to_string(i) + ";\n";
  }

  shader += "\nvoid main()\n{\n";
  shader += "    vec4 color = vec4(0.0);\n\n";

  for (int i = 0; i < textureCount; ++i) {
    shader +=
        "    color += texture(texture" + std::to_string(i) + ", TexCoord);\n";
  }

  shader += "\n    outColor = color / " + std::to_string(textureCount) + ";\n";
  shader += "}\n";

  return shader;
}

std::string ShaderGenerator::generateVertexShader(bool hasTexture) {
  std::string shader = "#version 330 core\n\n";
  shader += "layout(location = 0) in vec3 aPos;\n";

  if (hasTexture) {
    shader += "layout(location = 1) in vec2 aTexCoord;\n";
    shader += "out vec2 TexCoord;\n";
  }

  shader += "uniform mat4 model;\n";
  shader += "uniform mat4 camera;\n";
  shader += "void main()\n{\n";
  shader += "    gl_Position = camera * model * vec4(aPos, 1.0);\n";

  if (hasTexture) {
    shader += "    TexCoord = aTexCoord;\n";
  }

  shader += "}\n";

  return shader;
}
}