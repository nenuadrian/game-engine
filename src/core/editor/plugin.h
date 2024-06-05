#ifndef HADES_PLUGIN_H
#define HADES_PLUGIN_H

#include <glm/glm.hpp>
#include "core/project.h"

namespace Hades
{
  class Plugin
  {
  public:
    virtual void RenderMenuBarUI() = 0;
    virtual void RenderUI() = 0;
    virtual void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection) = 0;
    virtual void Load(Project *newProject) = 0;
    virtual void SelectWorld(World *world) = 0;
    virtual ~Plugin() = default;
  };
} // namespace Hades

#endif // HADES_PLUGIN_H
