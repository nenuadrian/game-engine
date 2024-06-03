#include "project.h"
#include "entities.h"
#include "entity_model.h"
#include "model_complex.h"
#include <ctime>
#include <fstream>
#include "core/json_export.h"

namespace Hades
{

  World *Project::NewWorld()
  {
    World *world = new World();
    worlds[world->id] = world;
    return world;
  }

  void Project::Save()
  {
    std::ofstream myfile;
    myfile.open(std::string(directory_path) + "/data.json");
    std::string s = Exporter::fromProject(this);
    myfile << s;
    myfile.close();
  }

  Project::~Project()
  {
    for (auto world : worlds)
    {
      delete world.second;
    }

    for (auto asset : assets)
    {
      delete asset;
    }
  }
} // namespace Hades