#pragma once

#include <string>

class Events {
public:
  bool RUN_GAME = false;
  bool RUN_EDITOR = false;
  bool CLOSE_WINDOW = false;
  std::string data;
};