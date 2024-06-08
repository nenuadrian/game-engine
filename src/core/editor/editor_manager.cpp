#include "editor_manager.h"

#include "core/entities.h"
#include "core/serialization/exporter.h"
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "nfd.h"
#include <fstream>
#include <iostream>
#include <string>
#include <cstdio>
#include <memory>
#include <stdexcept>
#include <array>
#include <glm/glm.hpp>

namespace Hades
{

  void EditorManager::scrollCallback(double x, double y)
  {
    m_editor_camera.scrollCallback(x, y);
  }

  void EditorManager::mouseButtonCallback(int button, int action, int modsy)
  {
    if (!ImGui::IsAnyItemActive() && button == GLFW_MOUSE_BUTTON_RIGHT)
    {
    }
  }

  void EditorManager::mousePosCallback(double x, double y)
  {

    if (!ImGui::IsAnyItemActive())
    {
    }
  }

  void EditorManager::AddPlugin(Plugin *plugin)
  {
    plugins.push_back(plugin);
  }

  void EditorManager::NewProject()
  {
    nfdchar_t *output_path = NULL;
    nfdresult_t result = NFD_PickFolder(NULL, &output_path);
    if (result == NFD_OKAY)
    {
      auto project = Project();
      project.directory_path = output_path;
      free(output_path);

      project.Save();

      load(project);
      auto world = project.NewWorld();
      project.mainWorldId = world->id;

      for (auto plugin : plugins)
      {
        plugin->SelectWorld(world);
      }
    }
    else
    {
      printf("Error: %s\n", NFD_GetError());
    }
  }

  void EditorManager::Open()
  {
    nfdchar_t *output_path = NULL;
    nfdresult_t result = NFD_PickFolder(NULL, &output_path);
    if (result == NFD_OKAY)
    {
      engine->events.setEvent(EventType::OPEN_PROJECT_FROM_FILE, output_path);
      engine->events.setEvent(EventType::CLOSE_WINDOW);
      engine->events.setEvent(EventType::RUN_EDITOR);

      free(output_path);
    }
    else
    {
      printf("Error: %s\n", NFD_GetError());
    }
  }

  void EditorManager::load(Project& newProject)
  {
    project = newProject;
    for (auto plugin : plugins)
    {
      plugin->Load(project);
    }
  }

  void EditorManager::RenderMenuBarUI()
  {
    if (ImGui::BeginMainMenuBar())
    {
      if (ImGui::BeginMenu("File"))
      {
        if (ImGui::MenuItem("New Project"))
        {
          NewProject();
        }
        if (ImGui::MenuItem("Open Project"))
        {
          Open();
        }
        if (ImGui::MenuItem("Save"))
        {
          project.Save();
        }

        if (ImGui::MenuItem("Exit"))
        {
          engine->events.setEvent(EventType::CLOSE_WINDOW);
        }

        ImGui::EndMenu();
      }

      if (ImGui::BeginMenu("Game"))
      {
        if (ImGui::MenuItem("Play", __null, false,
                            !project.mainWorldId.empty()))
        {
          engine->events.setEvent(EventType::RUN_GAME, Exporter::Serialize(&project));
          engine->events.setEvent(EventType::CLOSE_WINDOW);
        }
        ImGui::EndMenu();
      }

      for (auto plugin : plugins)
      {
        plugin->RenderMenuBarUI();
      }

      if (ImGui::BeginMenu("Help"))
      {
        if (ImGui::MenuItem("Toggle Debug Stats"))
        {
          m_show_debug_stats = !m_show_debug_stats;
        }
        if (ImGui::MenuItem("Toggle Logs"))
        {
          m_show_logs = !m_show_logs;
        }

        ImGui::EndMenu();
      }

      ImGui::EndMainMenuBar();
    }
  }

  void EditorManager::RenderUI()
  {

    RenderMenuBarUI();

    for (auto plugin : plugins)
    {
      plugin->RenderUI();
    }

    if (m_show_debug_stats)
    {
      ++m_frame_count;

      auto t_current = std::chrono::high_resolution_clock::now();
      if (t_current >= m_one_second)
      {
        m_last_fps = m_frame_count;
        // Reset the frame count and start time
        m_frame_count = 0;
        m_start = t_current;
        m_one_second = m_start + std::chrono::seconds(1);
      }

      ImGui::Begin("Debug Stats");
      ImGui::Text("%d FPS", m_last_fps);

      ImGui::Text("Project Directory: %s", project.directory_path.c_str());

      ImGui::End();
    }

    if (m_show_logs)
    {
      ImGui::Begin("Logs");
      if (!engine->logs.empty())
      {
        if (ImGui::Button("Clear All Logs"))
        {
          engine->logs.clear();
        }
        for (auto log : engine->logs)
        {
          ImGui::Separator();
          ImGui::Text("%s", log.msg.c_str());
        }
      }
      else
      {
        ImGui::Text("No logs generated.");
      }
      ImGui::End();
    }
  }

  void EditorManager::draw(float deltaTime)
  {
    if (!ImGui::IsAnyItemActive())
    {
      if (window->keyPressed(GLFW_KEY_W))
        m_editor_camera.ProcessKeyboard(FORWARD, deltaTime);
      if (window->keyPressed(GLFW_KEY_S))
        m_editor_camera.ProcessKeyboard(BACKWARD, deltaTime);
      if (window->keyPressed(GLFW_KEY_A))
        m_editor_camera.ProcessKeyboard(LEFTA, deltaTime);
      if (window->keyPressed(GLFW_KEY_D))
        m_editor_camera.ProcessKeyboard(RIGHTD, deltaTime);
      if (window->keyPressed(GLFW_KEY_UP))
        m_editor_camera.ProcessKeyboard(UP, deltaTime);
      if (window->keyPressed(GLFW_KEY_DOWN))
        m_editor_camera.ProcessKeyboard(DOWN, deltaTime);
      if (window->keyPressed(GLFW_KEY_LEFT))
        m_editor_camera.ProcessKeyboard(LEFT, deltaTime);
      if (window->keyPressed(GLFW_KEY_RIGHT))
        m_editor_camera.ProcessKeyboard(RIGHT, deltaTime);
    }

    glm::mat4 projection = glm::perspective(
        glm::radians(45.0f), (float)window->width / (float)window->height, 0.1f,
        100.0f);

    glm::mat4 view = m_editor_camera.GetViewMatrix();

    for (auto plugin : plugins)
    {
      plugin->Draw(deltaTime, view, projection);
    }

    RenderUI();
  }

  void EditorManager::run()
  {
    window = new WindowOpengl(reinterpret_cast<WindowParent *>(this), &engine->events);

    window->init();

    window->run();
  }

  EditorManager::~EditorManager()
  {
    for (auto plugin : plugins)
    {
      delete plugin;
    }
    delete window;
  }
} // namespace Hades
