#include "editor_manager.h"

#include "core/entities.h"
#include "core/json_export.h"
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
    camera.scrollCallback(x, y);
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

  void EditorManager::NewProject()
  {
    if (project != nullptr)
    {
      delete project;
    }

    nfdchar_t *outPath = NULL;
    nfdresult_t result = NFD_PickFolder(NULL, &outPath);
    if (result == NFD_OKAY)
    {
      auto project = new Project();
      project->directory_path = outPath;
      free(outPath);

      project->Save();

      load(project);
      auto world = project->NewWorld();
      project->mainWorldId = world->id;
      worldManager.SelectWorld(world);
    }
    else
    {
      printf("Error: %s\n", NFD_GetError());
    }
  }

  void EditorManager::Open()
  {
    nfdchar_t *outPath = NULL;
    nfdresult_t result = NFD_PickFolder(NULL, &outPath);
    if (result == NFD_OKAY)
    {
      events->setEvent(EventType::OPEN_PROJECT_FROM_FILE, outPath);
      events->setEvent(EventType::CLOSE_WINDOW);
      events->setEvent(EventType::RUN_EDITOR);

      free(outPath);
    }
    else
    {
      printf("Error: %s\n", NFD_GetError());
    }
  }

  void EditorManager::load(Project *newProject)
  {
    if (project != nullptr)
    {
      delete project;
    }
    project = newProject;
    scriptManager.Load(project);
    worldManager.Load(project);
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
        if (project != nullptr)
        {
          if (ImGui::MenuItem("Save"))
          {
            project->Save();
          }
        }

        if (ImGui::MenuItem("Exit"))
        {
          events->setEvent(EventType::CLOSE_WINDOW);
        }

        ImGui::EndMenu();
      }
      if (project != nullptr)
      {

        if (ImGui::BeginMenu("Game"))
        {
          if (ImGui::MenuItem("Play", __null, false,
                              !project->mainWorldId.empty()))
          {
            events->setEvent(EventType::RUN_GAME, Exporter::fromProject(project));
            events->setEvent(EventType::CLOSE_WINDOW);
          }
          ImGui::EndMenu();
        }
      }
      if (ImGui::BeginMenu("Help"))
      {
        if (ImGui::MenuItem("Debug Stats"))
        {
          showDebugStats = !showDebugStats;
        }
        if (ImGui::MenuItem("Docs"))
        {
        }
        if (ImGui::MenuItem("About"))
        {
        }

        ImGui::EndMenu();
      }
      scriptManager.RenderMenuBarUI();
      worldManager.RenderMenuBarUI();
      ImGui::EndMainMenuBar();
    }
  }

  void EditorManager::RenderUI()
  {

    RenderMenuBarUI();
    worldManager.RenderUI();
    scriptManager.RenderUI();

    if (showDebugStats)
    {
      ++frame_count;

      auto t_current = std::chrono::high_resolution_clock::now();
      if (t_current >= t_one_second)
      {
        last_fps = frame_count;
        // Reset the frame count and start time
        frame_count = 0;
        t_start = t_current;
        t_one_second = t_start + std::chrono::seconds(1);
      }

      ImGui::Begin("Debug Stats");
      ImGui::Text("%d FPS", last_fps);

      if (project)
      {
        ImGui::Text("Project Directory: %s", project->directory_path.c_str());
      }

      if (ImGui::Button("Close"))
      {
        showDebugStats = false;
      }

      ImGui::End();
    }

    ImGui::Begin("Logs");
    if (ImGui::Button("Clear All"))
    {
      engine->logs.clear();
    }
    for (auto log : engine->logs)
    {
      ImGui::Separator();
      ImGui::Text("%s", log.msg.c_str());
    }
    ImGui::End();
  }

  void EditorManager::draw(float deltaTime)
  {
    if (!ImGui::IsAnyItemActive())
    {
      if (window->keyPressed(GLFW_KEY_W))
        camera.ProcessKeyboard(FORWARD, deltaTime);
      if (window->keyPressed(GLFW_KEY_S))
        camera.ProcessKeyboard(BACKWARD, deltaTime);
      if (window->keyPressed(GLFW_KEY_A))
        camera.ProcessKeyboard(LEFTA, deltaTime);
      if (window->keyPressed(GLFW_KEY_D))
        camera.ProcessKeyboard(RIGHTD, deltaTime);
      if (window->keyPressed(GLFW_KEY_UP))
        camera.ProcessKeyboard(UP, deltaTime);
      if (window->keyPressed(GLFW_KEY_DOWN))
        camera.ProcessKeyboard(DOWN, deltaTime);
      if (window->keyPressed(GLFW_KEY_LEFT))
        camera.ProcessKeyboard(LEFT, deltaTime);
      if (window->keyPressed(GLFW_KEY_RIGHT))
        camera.ProcessKeyboard(RIGHT, deltaTime);
    }

    glm::mat4 projection = glm::perspective(
        glm::radians(45.0f), (float)window->width / (float)window->height, 0.1f,
        100.0f);

    glm::mat4 view = camera.GetViewMatrix();

    worldManager.Draw(deltaTime, view, projection);

    RenderUI();
  }

  void EditorManager::run()
  {
    window = new WindowOpengl(reinterpret_cast<WindowParent *>(this), events);

    window->init();

    window->run();
  }

  EditorManager::~EditorManager()
  {
    delete project;
    delete window;
  }
} // namespace Hades
