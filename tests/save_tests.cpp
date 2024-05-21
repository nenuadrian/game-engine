#include "core/entity.h"
#include <string>
#define CONFIG_CATCH_MAIN
#include "catch2/catch_test_macros.hpp"

#include <cstdint>

#include "../src/core/json_export.h"
#include "../src/core/editor/editor_manager.h"
#include "../src/core/project.h"
#include "nlohmann/json.hpp"

using namespace Hades;

TEST_CASE("Project should save to JSON")
{
  Project project = Project("test");
  project.name = "test";
  std::string json = JSONExporter::fromProject(&project);
  auto parsed = nlohmann::json::parse(json);
  REQUIRE(parsed["name"] == "test");
}

TEST_CASE("Assets should save to JSON")
{
  Project project = Project("test");
  auto asset = new Asset();
  asset->id = "tesT";
  asset->file = "tesT";
  asset->engineIdentifier = "tesT";
  project.assets.push_back(asset);

  std::string json = JSONExporter::fromProject(&project);
  auto parsed = nlohmann::json::parse(json);
  REQUIRE(parsed["assets"].size() == 1);
}

TEST_CASE("Project should load from JSON")
{
  Project *project =
      JSONExporter::toProject(R"({"name": "project", "mainWorldId": ""})");
  REQUIRE(project->name == "project");
  delete project;
}

TEST_CASE("Worlds should save to JSON")
{
  Project project = Project("test");
  std::string id = project.NewWorld();
  std::string json = JSONExporter::fromProject(&project);
  Project *project2 = JSONExporter::toProject(json);
  REQUIRE(project2->worlds.size() == 1);
}

TEST_CASE("Entities should save to JSON")
{
  Project project = Project("test");
  std::string id = project.NewWorld();
  Engine engine = Engine();
  EditorManager *manager = new EditorManager(&engine);
  manager->load(&project);

  manager->SelectWorld(id);

  std::string json = JSONExporter::fromProject(&project);
}