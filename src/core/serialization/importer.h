#include "core/entity.h"
#include "core/project.h"
#include <string>

namespace Hades
{
  class Importer
  {
  public:
    static Project Unserialize(std::string serialized_data);
    static Project UnserializeFile(std::string file_path);
  };
} // namespace Hades