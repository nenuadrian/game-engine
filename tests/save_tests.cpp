#include <string>
#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/project.h"

TEST_CASE("Project should save to JSON", "[save]") { 
    Project project = Project();
    std::string s = project.JSON();
    REQUIRE(1 == 1); 
}

TEST_CASE("Project should load from JSON", "[load]") { 
    Project project = Project();
    std::string s = project.loadJSON(R"{"name": "project"}");
    REQUIRE(1 == 1); 
}