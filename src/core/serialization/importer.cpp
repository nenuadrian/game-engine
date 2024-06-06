#include "importer.h"
#include "core/model_basic.h"
#include "core/model_complex.h"
#include "core/entities.h"
#include "nlohmann/json.hpp"
#include "core/asset.h"

namespace
{
  using namespace nlohmann;

  glm::vec3 JSONvec3(json data)
  {
    return glm::vec3(data["x"], data["y"], data["z"]);
  }
}

namespace Hades
{
  using namespace nlohmann;
  using namespace std;

  Project *Importer::UnserializeFile(string file_path)
  {
    auto project = new Project();

    return project;
  }

  Project *Importer::Unserialize(string serialized_data)
  {
    auto data = json::parse(serialized_data);
    auto project = new Project();
    project->name = data["name"];
    project->mainWorldId = data["mainWorldId"];

    for (auto worldData : data["worlds"])
    {
      World *world =
          new World(worldData["id"], worldData["name"], worldData["mainCameraEntityId"]);
      project->worlds[world->id] = world;
    }

    for (auto assetData : data["assets"])
    {
      auto asset = new Asset(assetData["type"], assetData["id"], assetData["file"], assetData["engineIdentifier"]);
      project->assets.push_back(asset);
    }

    for (auto entityData : data["entities"])
    {
      Entity *entity = nullptr;
      entity->id = entityData["id"];
      entity->engineIdentifier = entityData["engineIdentifier"];
      entity->position = JSONvec3(entityData["position"]);
      entity->scale = JSONvec3(entityData["scale"]);
      entity->rotation = JSONvec3(entityData["rotation"]);
      entity->attachedScriptId = entityData["attachedScriptId"];

      if (entityData["type"] == "model")
      {
        auto localentity = new ModelEntity();
        if (data.contains("model"))
        {

          if (data["model"]["type"] == "complex")
          {
            localentity->model = new ModelComplex();
            ((ModelComplex *)localentity->model)->path = data["path"];
          }
          else
          {
            localentity->model = new ModelBasic(data["model"]["type"]);
          }
        }

        entity = localentity;
      }
      else if (entityData["type"] == "camera")
      {
        auto camera = new CameraEntity();
        camera->camera.Yaw = data["yaw"];
        camera->camera.Pitch = data["pitch"];
        camera->camera.updateCameraVectors();
        entity = camera;
      }

      for (auto world : project->worlds)
      {
        if (world.first == entityData["world"])
        {
          world.second->entities.push_back(entity);
        }
      }
    }

    return project;
  }

} // namespace Hades