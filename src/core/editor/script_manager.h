#pragma once
#include "core/events.h"
#include "core/asset.h"
#include "core/project.h"
#include <chrono>

namespace Hades
{
  class Engine;
  class ScriptManager
  {
  private:
    Asset *selectedAsset = nullptr;
    Engine *engine = nullptr;
    Events *events;
    Project *project = nullptr;

  public:
    ScriptManager(Engine *engine) : engine(engine) { events = &engine->events; };
    void RenderUI();
    void RenderMenuBarUI();
    void Load(Project *newProject)
    {
      project = newProject;
    }

    void SelectScript(Asset *asset)
    {
      selectedAsset = asset;
    }

    ~ScriptManager();
  };
} // namespace Hades
