#include <string>

namespace Hades {
class ShaderGenerator {

public:
  ShaderGenerator() {}

  std::string generateFragmentShader(int textureCount);
  std::string generateVertexShader(bool hasTexture);
};
} // namespace Hades