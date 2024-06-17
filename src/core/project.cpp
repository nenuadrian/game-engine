#include "project.h"
#include "entities.h"
#include "entity_model.h"
#include "model_complex.h"
#include <ctime>
#include <fstream>
#include "core/serialization/exporter.h"

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
    std::string s = Exporter::Serialize(this);

    std::ofstream myfile;
    myfile.open(absolute_path / "data.json");
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