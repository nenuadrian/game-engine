#include "core/entity.h"
#include <string>

 class JSONExporter {
  public:
  static std::string fromProject(Project *project);
  static Project *toProject(std::string json);
};