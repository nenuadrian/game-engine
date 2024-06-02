#include "core/entity.h"
#include "core/project.h"
#include <string>

namespace Hades {
class Exporter {
public:
  static std::string fromProject(Project *project);
  static Project *toProject(std::string json);
};
} // namespace Hades