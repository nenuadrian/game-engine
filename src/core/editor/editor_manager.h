#pragma once
#include "core/camera.h"
#include "core/entity_model.h"
#include "core/events.h"
#include "core/asset.h"
#include "core/editor/script_manager.h"
#include "core/editor/world_manager.h"
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
    Engine *engine;
    ScriptManager scriptManager;

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
    WorldManager m_world_manager;

    EditorManager(Engine *engine) : engine(engine), scriptManager(ScriptManager(engine)), m_world_manager(WorldManager(engine, this)){};

  private:
    void RenderMenuBarUI();

  public:
    void run();
    void Open();
    void load(Project *newProject);
    void NewProject();
    void RenderUI();

    void draw(float deltaTime) override;
    void scrollCallback(double x, double y) override;
    void mouseButtonCallback(int button, int action, int modsy) override;
    void mousePosCallback(double x, double y) override;

    ~EditorManager();
  };
} // namespace Hades
