
#pragma once
#include "events.h"
#include <chrono>
#include <string>
#include <vector>

namespace Hades
{
  class Log
  {
  public:
    std::string msg;

    Log(std::string msg_) : msg(msg_){};
  };

  class Engine
  {

  public:
    Events events;
    std::vector<Log> logs;

    Engine(){};
    void RunEditor();
    void RunGame(std::string from_path);
    static long int newEngineId()
    {
      return std::chrono::system_clock::now().time_since_epoch().count();
    };

    void info(std::string msg) { logs.push_back(Log(msg)); }

    void error(std::string msg) { logs.push_back(Log(msg)); }
  };
} // namespace Hades
