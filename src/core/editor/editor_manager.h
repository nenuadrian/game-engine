#ifndef HADES_EDITOR_MANAGER_H
#define HADES_EDITOR_MANAGER_H

#include "core/camera.h"
#include "core/entity_model.h"
#include "core/events.h"
#include "core/editor/plugin.h"
#include "core/asset.h"
#include "core/project.h"
#include "core/window_opengl.h"
#include <chrono>
#include <glm/glm.hpp>

namespace Hades
{
  class Engine;
  class EditorManager : public WindowParent
  {
  private:
    std::vector<Plugin*> plugins;
    Engine *engine;

    const unsigned int SCR_WIDTH = 800;
    const unsigned int SCR_HEIGHT = 600;
    Window *window;

    bool m_show_debug_stats = false;
    bool m_show_logs = false;
    int m_last_fps = 0;
    int m_frame_count = 0;

    std::chrono::time_point<std::chrono::steady_clock> m_start =
        std::chrono::high_resolution_clock::now();

    std::chrono::time_point<std::chrono::steady_clock> m_one_second =
        m_start + std::chrono::seconds(1);

    Camera m_editor_camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));

  public:
    Project *project = nullptr;

    EditorManager(Engine *engine) : engine(engine){};

  private:
    void RenderMenuBarUI();

  public:
    void run();
    void Open();
    void load(Project *newProject);
    void NewProject();
    void RenderUI();
    void AddPlugin(Plugin* plugin);

    void draw(float deltaTime) override;
    void scrollCallback(double x, double y) override;
    void mouseButtonCallback(int button, int action, int modsy) override;
    void mousePosCallback(double x, double y) override;

    ~EditorManager();
  };
} // namespace Hades

#endif // HADES_EDITOR_MANAGER_H
