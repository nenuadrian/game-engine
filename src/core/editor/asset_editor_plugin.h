#ifndef HADES_ASSET_EDITOR_PLUGIN_H
#define HADES_ASSET_EDITOR_PLUGIN_H

#include "core/entity_model.h"
#include "core/events.h"
#include "core/asset.h"
#include "core/editor/editor_manager.h"
#include "core/engine.h"
#include "core/editor/plugin.h"
#include "core/project.h"
#include <glm/glm.hpp>

namespace Hades
{
  class AssetEditorPlugin : public Plugin
  {
  private:
    Asset *selectedAsset = nullptr;
    Asset *assetDirectory = nullptr;

    void RenderAssetsUI(Asset *parent);
    void RenderAssetUI();

  public:
    World *loadedWorld = nullptr;

    AssetEditorPlugin(Engine *engine, EditorManager *editorManager) : Plugin(engine, editorManager){};

    void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) override;
    void RenderUI() override;
    void RenderMenuBarUI() override;

    ~AssetEditorPlugin();
  };
} // namespace Hades

#endif // HADES_ASSET_EDITOR_PLUGIN_H
