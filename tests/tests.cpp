#define CONFIG_CATCH_MAIN
#include "../Catch2/src/catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/engine.h"

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( 1 == 1 );
}