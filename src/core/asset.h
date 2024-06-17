
#pragma once
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>
#include "engine.h"
#include <filesystem>
#include <dlfcn.h>

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
    std::string engine_identifier;
    std::string id = "untitled";
    std::string filename;
    std::__fs::filesystem::path relative_path;
    std::string parent_id;
    void *build_handle;

    AssetType type;

    Asset(AssetType type) : type(type)
    {
      engine_identifier = std::to_string(Engine::newEngineId());
    }
    Asset(AssetType _type, std::string _file);
    Asset(AssetType type, std::string id, std::string filename, std::string relative_path)
        : type(type), id(id), filename(filename), relative_path(relative_path)
    {
      engine_identifier = std::to_string(Engine::newEngineId());
    }
    Asset(std::string engine_identifier, AssetType type, std::string id, std::string filename, std::string relative_path)
        : type(type), id(id), filename(filename), engine_identifier(engine_identifier), relative_path(relative_path) {}

    std::string ReadAssetAsString();
    void WriteAsset(std::string content);

    ~Asset()
    {
      if (build_handle)
      {
        dlclose(build_handle);
      }
    }
  };
} // namespace Hades