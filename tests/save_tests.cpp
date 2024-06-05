#define CONFIG_CATCH_MAIN

#include "core/entity.h"
#include <string>
#include "catch2/catch_test_macros.hpp"
#include <cstdint>
#include <filesystem>
#include "nlohmann/json.hpp"

#include "../src/core/json_export.h"
#include "../src/core/editor/editor_manager.h"
#include "../src/core/project.h"

using namespace Hades;

TEST_CASE("Project should save to JSON")
{
  Project project = Project();
  project.name = "test";
  std::string json = Exporter::fromProject(&project);
  auto parsed = nlohmann::json::parse(json);
  REQUIRE(parsed["name"] == "test");
}

TEST_CASE("Assets should save to JSON")
{
  Project project = Project();
  auto asset = new Asset(AssetType::MODEL);
  asset->id = "tesT";
  asset->file = "tesT";
  asset->engineIdentifier = "tesT";
  project.assets.push_back(asset);

  std::string json = Exporter::fromProject(&project);
  auto parsed = nlohmann::json::parse(json);
  REQUIRE(parsed["assets"].size() == 1);
}

TEST_CASE("Project should load from JSON")
{
  Project *project =
      Exporter::toProject(R"({"name": "project", "mainWorldId": ""})");
  REQUIRE(project->name == "project");
  delete project;
}

TEST_CASE("Worlds should save to JSON")
{
  Project project = Project();
  project.NewWorld();
  std::string json = Exporter::fromProject(&project);
  Project *project2 = Exporter::toProject(json);
  REQUIRE(project2->worlds.size() == 1);
}

TEST_CASE("Entities should save to JSON")
{
  Project project = Project();
  auto world = project.NewWorld();
  Engine engine = Engine();
  EditorManager *manager = new EditorManager(&engine);
  manager->load(&project);

  std::string json = Exporter::fromProject(&project);
}

TEST_CASE("Saving and loading project from directory")
{
  auto tempDir = std::__fs::filesystem::temp_directory_path();
  Project project = Project();
  project.directory_path = tempDir.string();
  project.Save();
}