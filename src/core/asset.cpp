#include "asset.h"
#include "engine.h"
#include "string.h"
#include <fstream>
#include <iostream>

namespace Hades
{

  Asset::Asset(AssetType _type, std::string _file)
  {
    // TODO: fix
  }

  // TODO: fix
  std::string Asset::ReadAssetAsString()
  {
    std::ifstream ifs("./");
    std::string content((std::istreambuf_iterator<char>(ifs)),
                        (std::istreambuf_iterator<char>()));
    ifs.close();
    return content;
  }

  // TODO: fix
  void Asset::WriteAsset(std::string content)
  {
    std::ofstream ofs("./");
    ofs << content;
    ofs.close();
  }

}