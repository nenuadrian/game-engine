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
    Asset *selected_script = nullptr;

  public:
    ScriptEditorPlugin(Engine *engine, EditorManager *editor_manager) : Plugin(engine, editor_manager){};
    void RenderUI() override;
    void RenderMenuBarUI() override;
    void Draw(float delta_time, glm::mat4 view, glm::mat4 projection) override {}

    void SelectScript(Asset *asset)
    {
      selected_script = asset;
    }

    ~ScriptEditorPlugin();
  };
} // namespace Hades
