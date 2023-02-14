
#pragma once
#include "events.h"
#include <chrono>
#include <vector>
#include <string>

namespace Hades {
class Log {
 public:
  std::string msg;
  
  Log(std::string msg) : msg(msg) {};
}
  
class Engine {
  Events events;
  std::vector<Log> logs;

public:
  Engine(){};
  void RunEditor();
  void RunGame();
  static long int newEngineId() {
    std::chrono::milliseconds ms = duration_cast<std::chrono::milliseconds>(
        std::chrono::system_clock::now().time_since_epoch());
    return ms.count();
  };
  
  void info(std::string msg) {
    logs.push_back(Log(msg));
  }
  
  void error(std::string msg) {
    logs.push_back(Log(msg));
  }
}; 
} // namespace Hades
