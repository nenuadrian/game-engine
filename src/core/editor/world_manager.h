#pragma once
#include "core/entity_model.h"
#include "core/events.h"
#include "core/project.h"
#include <glm/glm.hpp>

namespace Hades
{
  class Engine;
  class EditorManager;
  class WorldManager
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

    WorldManager(Engine *engine, EditorManager *editorManager) : engine(engine), editorManager(editorManager) { events = &engine->events; };

    void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection);
    void RenderUI();
    void RenderMenuBarUI();
    void Load(Project *newProject)
    {
      project = newProject;
    }

    void SelectWorld(World *world)
    {
      loadedWorld = world;
    }

    ~WorldManager();
  };
} // namespace Hades
