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

  public:
    ScriptEditorPlugin(Engine *engine, EditorManager *editorManager) : Plugin(engine, editorManager){};
    void RenderUI() override;
    void RenderMenuBarUI() override;
    void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) override {}

    void SelectScript(Asset *asset)
    {
      selectedAsset = asset;
    }

    ~ScriptEditorPlugin();
  };
} // namespace Hades
