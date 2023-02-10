#include "project.h"
#include "entities.h"
#include "entity_model.h"
#include "model_complex.h"
#include "nlohmann/json.hpp"
#include <ctime>
#include <fstream>

Project::Project() {}

std::string Project::JSON() {
  nlohmann::json data = nlohmann::json::object();

  data["name"] = name;
  data["mainWorldId"] = mainWorldId;
  std::vector<nlohmann::json> worldsVector = {};
  std::vector<nlohmann::json> assetsVector = {};
  std::vector<nlohmann::json> entitiesVector = {};
  for (World *world : worlds) {
    nlohmann::json worldData = nlohmann::json::object();
    worldData["id"] = world->id;
    worldData["mainCameraEntityId"] = world->mainCameraEntityId;
    worldData["name"] = world->name;
    worldsVector.push_back(worldData);
    for (Asset *asset : world->assets) {
      nlohmann::json assetData = nlohmann::json::object();
      assetData["file"] = asset->file;
      assetData["engineIdentifier"] = asset->engineIdentifier;
      assetData["id"] = asset->id;
      assetData["world"] = world->id;
      assetsVector.push_back(assetData);
    }

    for (Entity *entity : world->entities) {
      nlohmann::json entityData = entity->JSON();

      entityData["world"] = world->id;
      entitiesVector.push_back(entityData);
    }
  }

  data["worlds"] = worldsVector;
  data["assets"] = assetsVector;
  data["entities"] = entitiesVector;

  return data.dump();
}

void Project::save(std::string directory) {
  std::string s = JSON();
  std::ofstream myfile;
  myfile.open(directory + "data.json");
  myfile << s;
  myfile.close();
}

void Project::LoadJSON(std::string json) {
  auto data = nlohmann::json::parse(json);
  name = data["name"];
  mainWorldId = data["mainWorldId"];

  for (auto worldData : data["worlds"]) {
    World *world = new World(worldData);
    worlds.push_back(world);
  }

  for (auto assetData : data["assets"]) {
    Asset *asset = new Asset(assetData);

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

void Project::load(std::string dataFile) {
  std::ifstream ifs(dataFile);
  std::string content((std::istreambuf_iterator<char>(ifs)),
                      (std::istreambuf_iterator<char>()));
  ifs.close();

  LoadJSON(content);
}

std::string Project::NewWorld() {
  World *world = new World();
  worlds.push_back(world);

  return world->id;
}
