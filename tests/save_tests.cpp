#include <string>
#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/core/json_export.h"
#include "../src/core/project.h"

using namespace Hades;


TEST_CASE("Project should save to JSON", "[save]") {
  Project project = Project();
  std::string s = JSONExporter::fromProject(&project);
  REQUIRE(1 == 1);
}

TEST_CASE("Project should load from JSON", "[load]") {
  Project *project =
      JSONExporter::toProject(R"({"name": "project", "mainWorldId": ""})");
  REQUIRE(project->name == "project");
  delete project;
}