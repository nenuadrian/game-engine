#ifndef HADES_PLUGIN_H
#define HADES_PLUGIN_H

#include <glm/glm.hpp>
#include "core/project.h"

namespace Hades
{
  class Plugin
  {
  public:
    Plugin(Engine *engine, EditorManager *editorManager) : engine(engine), editorManager(editorManager){};

    virtual void RenderMenuBarUI() = 0;
    virtual void RenderUI() = 0;
    virtual void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) = 0;
    virtual void Load(Project *newProject)
    {
      project = newProject;
    }
    void SelectWorld(World *world)
    {
      loadedWorld = world;
    }
    virtual ~Plugin() = default;

  protected:
    Engine *engine = nullptr;
    EditorManager *editorManager;
    Project *project = nullptr;
    World *loadedWorld = nullptr;
  };
} // namespace Hades

#endif // HADES_PLUGIN_H
