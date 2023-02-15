#include "asset.h"
#include "engine.h"

namespace Hades {

Asset::Asset(std::string _file) {
  file = _file;

  engineIdentifier = std::to_string(Engine::newEngineId());
  id = engineIdentifier;
}
}