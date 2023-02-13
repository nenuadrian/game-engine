
#pragma once
#include "events.h"

class Engine {
  Events events;

public:
  Engine(){};
  void RunEditor();
  void RunGame();
  static long int newEngineId();
};
