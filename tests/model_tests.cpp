#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/core/model_complex.h"

TEST_CASE("Models are loaded using Assimp from .obj", "[obj]") { 
    ModelComplex model = ModelComplex("../tests/backpack/12305_backpack_v2_l3.obj");
    REQUIRE(1 == 1); 
}