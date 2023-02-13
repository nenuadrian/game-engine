#pragma once

#include <string>

namespace Hades {
class Events {
public:
  bool RUN_GAME = false;
  bool RUN_EDITOR = false;
  bool CLOSE_WINDOW = false;
  bool OPEN_PROJECT = false;
  std::string data;
};
} // namespace Hades