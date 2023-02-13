
#pragma once
#include "events.h"
#include <chrono>

namespace Hades {

class Engine {
  Events events;

public:
  Engine(){};
  void RunEditor();
  void RunGame();
  static long int newEngineId() {
    std::chrono::milliseconds ms = duration_cast<std::chrono::milliseconds>(
        std::chrono::system_clock::now().time_since_epoch());
    return ms.count();
  };
}; // namespace Hades
} // namespace Hades