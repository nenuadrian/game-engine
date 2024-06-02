#include "asset.h"
#include "engine.h"
#include "string.h"
#include <fstream>
#include <iostream>

namespace Hades
{

  Asset::Asset(AssetType _type, std::string _file)
  {
    file = _file;
    type = _type;

    engineIdentifier = std::to_string(Engine::newEngineId());
    id = engineIdentifier;
  }

  std::string Asset::ReadAssetAsString()
  {
    std::ifstream ifs("./" + file);
    std::string content((std::istreambuf_iterator<char>(ifs)),
                        (std::istreambuf_iterator<char>()));
    ifs.close();
    return content;
  }

  void Asset::WriteAsset(std::string content)
  {
    std::ofstream ofs("./" + file);
    ofs << content;
    ofs.close();
  }

}