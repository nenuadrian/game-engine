
#include "events.h"

class Engine {
  Events events;
  const unsigned int SCR_WIDTH = 800;
  const unsigned int SCR_HEIGHT = 600;

public:
  Engine(){};
  void Editor();
  void Game();
};
