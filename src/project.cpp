#include "project.h"
#include "entity.h"
#include "model_complex.h"
#include "nlohmann/json.hpp"
#include <ctime>
#include <fstream>

Project::Project() {}

void Project::Save(std::string directory) {
  nlohmann::json data = nlohmann::json::object();

  data["title"] = title;

  std::vector<nlohmann::json> worldsVector = {};
  std::vector<nlohmann::json> assetsVector = {};
  std::vector<nlohmann::json> entitiesVector = {};
  for (World *world : worlds) {
    nlohmann::json worldData = nlohmann::json::object();
    worldData["id"] = world->id;
    worldData["name"] = world->name;
    worldsVector.push_back(worldData);
    for (Asset *asset : world->assets) {
      nlohmann::json assetData = nlohmann::json::object();
      assetData["file"] = asset->file;
      assetData["name"] = asset->name;
      assetData["world"] = world->id;
      assetsVector.push_back(assetData);
    }

    for (Entity *entity : world->entities) {
      nlohmann::json entityData = entity->Save();

      entityData["world"] = world->id;
      entitiesVector.push_back(entityData);
    }
  }

  data["worlds"] = worldsVector;
  data["assets"] = assetsVector;
  data["entities"] = entitiesVector;

  std::string s = data.dump();
  std::ofstream myfile;
  myfile.open(directory + "data.json");
  myfile << s;
  myfile.close();
}

void Project::Load(std::string directory) {
  std::ifstream ifs(directory + "data.json");
  std::string content((std::istreambuf_iterator<char>(ifs)),
                      (std::istreambuf_iterator<char>()));
  ifs.close();

  auto data = nlohmann::json::parse(content);
  title = data["title"];

  for (auto worldData : data["worlds"]) {
    World *world = new World();
    world->id = worldData["id"];
    world->name = worldData["name"];
    worlds.push_back(world);
  }

  for (auto assetData : data["assets"]) {
    Asset *asset = new Asset(assetData["file"]);
    asset->name = assetData["name"];
    for (World *w : worlds) {
      if (w->id == assetData["world"]) {
        w->assets.push_back(asset);
      }
    }
  }

  for (auto entityData : data["entities"]) {
    Entity *entity = nullptr;
    if (entityData["type"] == "model") {
      entity = new ModelEntity(entityData);
    } else if (entityData["type"] == "camera") {
      entity = new CameraEntity(entityData);
    }

    for (World *w : worlds) {
      if (w->id == entityData["world"]) {
        w->entities.push_back(entity);
      }
    }
  }
}

std::string Project::NewWorld() {
  World *world = new World();
  worlds.push_back(world);

  return world->id;
}

World::World() {
  long int t = static_cast<long int>(time(NULL));

  id = std::to_string(t);
  name = "Untitled";
}

Asset::Asset(std::string file_) {
  file = file_;
  name = file_;
}
