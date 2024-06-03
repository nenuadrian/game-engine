#pragma once
#include "model.h"
#include "project.h"
#include "shaders/shader.h"
#include "window.h"
#include <string>
#include <vector>

namespace Hades
{
  class ModelEntity : public Entity
  {
  private:
    Shader *shader = nullptr;
    bool modelSelectionWindowOpen = false;

  public:
    Model *model = nullptr;

    ModelEntity();
    void InitBasicModel(std::string shape);
    std::string type() override { return "model"; };
    void EditorUI(EditorManager *editor) override;
    void draw(float deltaTime, glm::mat4 view, glm::mat4 projection) override;
    virtual void init(bool running_, Window *window) override;
    ~ModelEntity();
  };
} // namespace Hades