#pragma once
#include "core/events.h"
#include "core/asset.h"
#include "core/engine.h"
#include "core/editor/plugin.h"
#include "core/project.h"
#include <chrono>
#include <glm/glm.hpp>

namespace Hades
{
  class ScriptEditorPlugin : public Plugin
  {
  private:
    Asset *selectedAsset = nullptr;
    Engine *engine = nullptr;
    Events *events;
    Project *project = nullptr;

  public:
    ScriptEditorPlugin(Engine *engine) : engine(engine) { events = &engine->events; };
    void RenderUI() override;
    void RenderMenuBarUI() override;
    void SelectWorld(World *world) override {}
    void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) override {}
    void Load(Project *newProject) override
    {
      project = newProject;
    }

    void SelectScript(Asset *asset)
    {
      selectedAsset = asset;
    }

    ~ScriptEditorPlugin();
  };
} // namespace Hades
