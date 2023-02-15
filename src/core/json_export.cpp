#include "json_export.h"
#include "core/model_basic.h"
#include "core/model_complex.h"
#include "entities.h"
#include "nlohmann/json.hpp"

namespace Hades {
  using namespace nlohmann;
  using namespace std;

json vec3JSON(glm::vec3 v) {
  auto json = json::object();
  json["x"] = v.x;
  json["y"] = v.y;
  json["z"] = v.z;
  return json;
}

glm::vec3 JSONvec3(json data) {
  return glm::vec3(data["x"], data["y"], data["z"]);
}

string JSONExporter::fromProject(Project *project) {
  json data = json::object();

  data["name"] = project->name;
  data["mainWorldId"] = project->mainWorldId;
  vector<json> worldsVector = {};
  vector<json> assetsVector = {};
  vector<json> entitiesVector = {};
  for (World *world : project->worlds) {
    json worldData = json::object();
    worldData["id"] = world->id;
    worldData["mainCameraEntityId"] = world->mainCameraEntityId;
    worldData["name"] = world->name;
    worldsVector.push_back(worldData);

    for (Entity *entity : world->entities) {

      json entityData = json::object();
      entityData["id"] = entity->id;
      entityData["type"] = entity->type();
      entityData["engineIdentifier"] = entity->engineIdentifier;
      entityData["position"] = vec3JSON(entity->position);
      entityData["script"] = entity->script;
      entityData["scale"] = vec3JSON(entity->scale);
      entityData["rotation"] = vec3JSON(entity->rotation);
      entityData["world"] = world->id;

      if (entity->type() == "camera") {
        data["yaw"] = ((CameraEntity *)entity)->camera.Yaw;
        data["pitch"] = ((CameraEntity *)entity)->camera.Pitch;
      } else if (entity->type() == "model") {
        if (((ModelEntity *)entity)->model) {
          data["model"] = json::object();
          data["model"]["type"] = ((ModelEntity *)entity)->model->type;
          if (((ModelEntity *)entity)->model->type == "basic") {
            data["model"]["shape"] =
                ((ModelBasic *)((ModelEntity *)entity)->model)->shape;
          } else {
            data["model"]["path"] =
                ((ModelComplex *)((ModelEntity *)entity)->model)->path;
          }
        }
      }

      entitiesVector.push_back(entityData);
    }
  }

  for (Asset *asset : project->assets) {
    json assetData = json::object();
    assetData["file"] = asset->file;
    assetData["engineIdentifier"] = asset->engineIdentifier;
    assetData["id"] = asset->id;
    assetsVector.push_back(assetData);
  }

  data["worlds"] = worldsVector;
  data["assets"] = assetsVector;
  data["entities"] = entitiesVector;

  return data.dump();
}

Project *JSONExporter::toProject(string json) {
  auto project = new Project();
  auto data = json::parse(json);
  project->name = data["name"];
  project->mainWorldId = data["mainWorldId"];

  for (auto worldData : data["worlds"]) {
    World *world =
        new World(worldData["id"], worldData["name"], worldData["mainCameraEntityId"]);
    project->worlds.push_back(world);
  }

  for (auto assetData : data["assets"]) {
    auto asset = new Asset(assetData["id"], assetData["file"], assetData["engineIdentifier"]);
    project->assets.push_back(asset);
  }

  for (auto entityData : data["entities"]) {
    Entity *entity = nullptr;
    entity->id = entityData["id"];
    entity->script = entityData["script"];
    entity->engineIdentifier = entityData["engineIdentifier"];
    entity->position = JSONvec3(entityData["position"]);
    entity->scale = JSONvec3(entityData["scale"]);
    entity->rotation = JSONvec3(entityData["rotation"]);

    if (entityData["type"] == "model") {
      auto localentity = new ModelEntity();
      if (data.contains("model")) {

        if (data["model"]["type"] == "complex") {
          localentity->model = new ModelComplex();
          ((ModelComplex *)localentity->model)->path = data["path"];
        } else {
          localentity->model = new ModelBasic(data["model"]["type"]);
        }
      }

      entity = localentity;

    } else if (entityData["type"] == "camera") {
      auto camera = new CameraEntity();
      camera->camera.Yaw = data["yaw"];
      camera->camera.Pitch = data["pitch"];
      camera->camera.updateCameraVectors();
      entity = camera;
    }

    for (World *w : project->worlds) {
      if (w->id == entityData["world"]) {
        w->entities.push_back(entity);
      }
    }
  }

  return project;
}

} // namespace Hades