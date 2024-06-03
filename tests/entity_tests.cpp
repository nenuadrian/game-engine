#include <iostream>
#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/core/entity.h"
#include "../src/core/entity_model.h"
#include "../src/core/window_opengl.h"

using namespace Hades;

TEST_CASE("Entities are initialised")
{
  Events events;
  WindowOpengl *w = new WindowOpengl(nullptr, &events);
  w->init();
  ModelEntity entity = ModelEntity();

  REQUIRE(entity.type() == "model");
}
