
#pragma once
#include "events.h"

namespace Hades {
class Engine {
  Events events;

public:
  Engine(){};
  void RunEditor();
  void RunGame();
  static long int newEngineId();
};
} // namespace Hades
