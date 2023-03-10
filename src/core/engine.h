
#pragma once
#include "events.h"
#include <chrono>
#include <string>
#include <vector>

namespace Hades {
class Log {
public:
  std::string msg;

  Log(std::string msg) : msg(msg){};
};

class Engine {

public:
  Events events;
  std::vector<Log> logs;

  Engine(){};
  void RunEditor();
  void RunGame();
  static long int newEngineId() {
    return std::chrono::system_clock::now().time_since_epoch().count();
  };

  void info(std::string msg) { logs.push_back(Log(msg)); }

  void error(std::string msg) { logs.push_back(Log(msg)); }
};
} // namespace Hades
