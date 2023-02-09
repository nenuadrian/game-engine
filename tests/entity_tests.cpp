#include <iostream>
#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/core/entity.h"
#include "../src/core/entity_model.h"
#include "../src/core/window_opengl.h"

TEST_CASE("Entities are initialised", "[entity]") {
  Events events;
  WindowOpengl *w = new WindowOpengl(nullptr, &events);
  w->Init();
  ModelEntity entity = ModelEntity();
  entity.JSON();

  REQUIRE(1 == 1);
}