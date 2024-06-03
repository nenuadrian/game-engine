#pragma once
#include "core/entity_model.h"
#include "core/events.h"
#include "core/asset.h"
#include "core/project.h"
#include <glm/glm.hpp>

namespace Hades
{
  class Engine;
  class EditorManager;
  class AssetManager
  {
  private:
    EditorManager *editorManager;
    Project *project = nullptr;
    Engine *engine = nullptr;
    Asset *selectedAsset = nullptr;
    Asset *assetDirectory = nullptr;

    void RenderAssetsUI(Asset *parent);
    void RenderAssetUI();

  public:
    World *loadedWorld = nullptr;

    AssetManager(Engine *engine, EditorManager *editorManager) : engine(engine), editorManager(editorManager){};

    void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection);
    void RenderUI();
    void RenderMenuBarUI();
    void Load(Project *newProject)
    {
      project = newProject;
    }

    ~AssetManager();
  };
} // namespace Hades
