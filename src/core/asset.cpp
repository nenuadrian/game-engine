#include "asset.h"
#include "engine.h"

namespace Hades
{

  Asset::Asset(AssetType _type, std::string _file)
  {
    file = _file;
    type = _type;

    engineIdentifier = std::to_string(Engine::newEngineId());
    id = engineIdentifier;
  }
}