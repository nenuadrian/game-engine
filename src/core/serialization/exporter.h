#include "core/entity.h"
#include "core/project.h"
#include <string>

namespace Hades
{
  class Exporter
  {
  public:
    static std::string Serialize(Project *project);
    static std::string SerializeToFile(Project *project, std::string file_path);
  };
} // namespace Hades