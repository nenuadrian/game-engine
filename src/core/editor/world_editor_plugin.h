#ifndef HADES_WORLD_EDITOR_PLUGIN_H
#define HADES_WORLD_EDITOR_PLUGIN_H

#include "core/entity_model.h"
#include "core/events.h"
#include "core/engine.h"
#include "core/project.h"
#include <glm/glm.hpp>
#include "core/editor/editor_manager.h"
#include "core/editor/plugin.h"

namespace Hades
{
  class WorldEditorPlugin : public Plugin
  {
  private:
    EditorManager *editorManager;
    Project *project = nullptr;
    Engine *engine = nullptr;
    Events *events;
    Entity *selectedEntity = nullptr;

    void RenderEntitiesUI(Entity *parent);

  public:
    World *loadedWorld = nullptr;

    WorldEditorPlugin(Engine *engine, EditorManager *editorManager) : engine(engine), editorManager(editorManager) { events = &engine->events; };

    void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) override;
    void RenderUI() override;
    void RenderMenuBarUI() override;
    void Load(Project *newProject) override
    {
      project = newProject;
    }
    void SelectWorld(World *world) override
    {
      loadedWorld = world;
    }

    ~WorldEditorPlugin();
  };
} // namespace Hades

#endif // HADES_WORLD_EDITOR_PLUGIN_H
