#include <iostream>
#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/core/model_complex.h"
#include "../src/core/window_opengl.h"

TEST_CASE("Models are loaded using Assimp from .obj", "[obj]") {
  Events events;
  WindowOpengl *w = new WindowOpengl(nullptr, &events);
  w->init();
  ModelComplex model =
      ModelComplex("../tests/backpack/12305_backpack_v2_l3.obj");
  REQUIRE(!model.path.empty());
}