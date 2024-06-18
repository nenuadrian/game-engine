#include "exporter.h"
#include "core/model_basic.h"
#include "core/model_complex.h"
#include "core/entities.h"
#include "nlohmann/json.hpp"
#include "core/asset.h"

namespace
{
  using namespace nlohmann;

  json vec3JSON(glm::vec3 v)
  {
    auto json = json::object();
    json["x"] = v.x;
    json["y"] = v.y;
    json["z"] = v.z;
    return json;
  }
}

namespace Hades
{
  using namespace nlohmann;
  using namespace std;

  string Exporter::Serialize(Project *project)
  {
    json data = json::object();

    data["name"] = project->name;
    data["mainWorldId"] = project->mainWorldId;
    data["absolute_path"] = project->absolute_path;

    vector<json> worldsVector = {};
    vector<json> assetsVector = {};
    vector<json> entitiesVector = {};
    for (auto world : project->worlds)
    {
      json worldData = json::object();
      worldData["id"] = world.second->id;
      worldData["mainCameraEntityId"] = world.second->mainCameraEntityId;
      worldData["name"] = world.second->name;
      worldsVector.push_back(worldData);

      for (Entity *entity : world.second->entities)
      {
        json entityData = json::object();
        entityData["id"] = entity->id;
        entityData["type"] = entity->type();
        entityData["engineIdentifier"] = entity->engineIdentifier;
        entityData["position"] = vec3JSON(entity->position);
        entityData["scale"] = vec3JSON(entity->scale);
        entityData["rotation"] = vec3JSON(entity->rotation);
        entityData["world"] = world.second->id;
        entityData["attachedScriptId"] = entity->attachedScriptId;

        if (entity->type() == "camera")
        {
          data["yaw"] = ((CameraEntity *)entity)->camera.Yaw;
          data["pitch"] = ((CameraEntity *)entity)->camera.Pitch;
        }
        else if (entity->type() == "model")
        {
          if (((ModelEntity *)entity)->model)
          {
            data["model"] = json::object();
            data["model"]["type"] = ((ModelEntity *)entity)->model->type;
            if (((ModelEntity *)entity)->model->type == "basic")
            {
              data["model"]["shape"] =
                  ((ModelBasic *)((ModelEntity *)entity)->model)->shape;
            }
            else
            {
              data["model"]["path"] =
                  ((ModelComplex *)((ModelEntity *)entity)->model)->path;
            }
          }
        }

        entitiesVector.push_back(entityData);
      }
    }

    for (Asset *asset : project->assets)
    {
      json assetData = json::object();
      assetData["relative_path"] = asset->relative_path;
      assetData["filename"] = asset->filename;
      assetData["type"] = asset->type;
      assetData["engine_identifier"] = asset->engine_identifier;
      assetData["id"] = asset->id;
      assetsVector.push_back(assetData);
    }

    data["worlds"] = worldsVector;
    data["assets"] = assetsVector;
    data["entities"] = entitiesVector;

    return data.dump();
  }

} // namespace Hades