
#pragma once
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>

namespace Hades
{
  enum class AssetType
  {
    MODEL,
    DIRECTORY,
    SCRIPT,
  };

  class Asset
  {

  public:
    std::string engineIdentifier;
    std::string id;
    std::string file;
    std::string parent_id;
    AssetType type;

    Asset(AssetType type) : type(type) {}
    Asset(AssetType _type, std::string _file);
    Asset(AssetType type, std::string id, std::string file, std::string engineIdentifier)
        : type(type), id(id), file(file), engineIdentifier(engineIdentifier) {}
  };
} // namespace Hades