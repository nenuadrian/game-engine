
#pragma once
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>

namespace Hades {
class Asset {

public:
  std::string engineIdentifier;
  std::string id;
  std::string file;
  bool directory;
  Asset *parent;
  Asset() {}
  Asset(std::string _file);
  Asset(std::string id, std::string file, std::string engineIdentifier)
      : id(id), file(file), engineIdentifier(engineIdentifier) {}
  bool isDirectory() { return directory; }
};
} // namespace Hades