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

namespace
{
  std::string exec(const char *cmd)
  {
    std::array<char, 128> buffer;
    std::string result;
    std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(cmd, "r"), pclose);
    if (!pipe)
    {
      throw std::runtime_error("popen() failed!");
    }
    while (fgets(buffer.data(), static_cast<int>(buffer.size()), pipe.get()) != nullptr)
    {
      result += buffer.data();
    }
    return result;
  }
}

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

      project->Save();

      load(project);
      SelectWorld(project->NewWorld());
      project->mainWorldId = loadedWorld->id;

      free(outPath);
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
  }

  void EditorManager::SelectWorld(std::string worldId)
  {
    selectedEntity = nullptr;
    for (World *w : project->worlds)
    {
      if (w->id == worldId)
      {
        loadedWorld = w;
        w->init(project, window);
        return;
      }
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
        if (ImGui::BeginMenu("Editor"))
        {

          if (ImGui::BeginMenu("Worlds"))
          {
            if (ImGui::MenuItem("New World"))
            {
              std::string worldId = project->NewWorld();
              SelectWorld(worldId);
            }
            ImGui::Separator();

            for (World *world : project->worlds)
            {
              if (ImGui::MenuItem(
                      (world->name +
                       (world->id == project->mainWorldId ? " (main)" : "") +
                       "##" + world->id)
                          .c_str()))
              {
                if (world->id != project->mainWorldId)
                {
                  SelectWorld(world->id);
                }
              }
            }

            ImGui::EndMenu();
          }

          if (ImGui::BeginMenu("Entities"))
          {

            if (ImGui::BeginMenu("New Entity"))
            {
              Entity *entity = nullptr;
              if (ImGui::MenuItem("Container"))
              {
                entity = new Entity();
              }

              if (ImGui::MenuItem("Model"))
              {
                entity = new ModelEntity();
              }

              if (ImGui::MenuItem("Cube"))
              {
                entity = new ModelEntity();
                ((ModelEntity *)entity)->InitBasicModel("cube");
              }

              if (ImGui::MenuItem("Camera"))
              {
                entity = new CameraEntity();

                if (loadedWorld->mainCameraEntityId.empty())
                {
                  loadedWorld->mainCameraEntityId = entity->engineIdentifier;
                }
              }

              if (entity)
              {
                entity->init(false, nullptr);
                loadedWorld->addEntity(entity);
              }

              ImGui::EndMenu();
            }

            ImGui::EndMenu();
          }

          ImGui::EndMenu();
        }

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
      ImGui::EndMainMenuBar();
    }
  }

  void EditorManager::RenderUI()
  {

    RenderMenuBarUI();

    if (project != nullptr)
    {
      if (loadedWorld != nullptr)
      {
        ImGui::Begin("Scene");

        ImGui::InputText("Name", &loadedWorld->name);
        if (project->mainWorldId != loadedWorld->id)
        {
          if (ImGui::Button("Set as Main World"))
          {
            project->mainWorldId = loadedWorld->id;
          }
        }

        if (ImGui::CollapsingHeader("Entities"))
        {
          ImGui::Text("Entities");
          if (loadedWorld->entities.empty())
          {
            ImGui::Text("No entities created");
          }

          renderEntitiesUI(nullptr);
        }
        ImGui::End();
      }

      ImGui::Begin("Assets");
      if (project->assets.empty())
      {
        ImGui::Text("No assets imported");
      }

      if (ImGui::Button("New Script"))
      {
        auto asset = new Asset(AssetType::SCRIPT);
        std::ofstream myfile;
        myfile.open(project->directory_path + "/asset-" + asset->engineIdentifier + ".c");
        myfile << "test";
        myfile.close();
        project->assets.push_back(asset);
      }

      if (ImGui::Button("Import Asset"))
      {
        nfdchar_t *outPath = NULL;
        nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
        if (result == NFD_OKAY)
        {
          auto asset = new Asset(AssetType::MODEL, std::string(outPath));
          free(outPath);
          if (assetDirectory)
          {
            asset->parent_id = assetDirectory->id;
          }
          project->assets.push_back(asset);
        }
        else
        {
          printf("Error: %s\n", NFD_GetError());
        }
      }

      renderAssetsUI(assetDirectory);

      ImGui::End();

      if (selectedEntity != nullptr)
      {
        ImGui::Begin("Entity");

        selectedEntity->EditorUI(this);

        if (ImGui::Button("Delete"))
        {
          loadedWorld->entities.erase(
              std::remove_if(loadedWorld->entities.begin(),
                             loadedWorld->entities.end(),
                             [this](Entity *e)
                             { return e == selectedEntity; }),
              loadedWorld->entities.end());
          Entity *toDelete = selectedEntity;
          selectedEntity = nullptr;
          delete toDelete;
        }
        ImGui::End();
      }

      if (selectedAsset != nullptr)
      {
        ImGui::Begin("Asset");

        ImGui::LabelText("EngineID", "%s", selectedAsset->engineIdentifier.c_str());
        ImGui::InputText("Identifier", &selectedAsset->id);
        ImGui::LabelText("Type", "%d", selectedAsset->type);
        ImGui::LabelText("File", "%s", selectedAsset->file.c_str());

        if (ImGui::Button("Delete"))
        {
          project->assets.erase(
              std::remove_if(project->assets.begin(), project->assets.end(),
                             [this](Asset *e)
                             { return e == selectedAsset; }),
              project->assets.end());
          selectedAsset = nullptr;
        }

        if (selectedAsset->type == AssetType::SCRIPT)
        {
          if (ImGui::Button("Compile Script"))
          {
            try
            {
              engine->info(exec("g++ -dynamiclib -o libdynamic.dylib dynamic.cpp"));
            }
            catch (std::exception &e)
            {
              engine->error(e.what());
            }
          }
        }

        ImGui::End();
      }
    }
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

  void EditorManager::renderAssetsUI(Asset *parent)
  {
    if (assetDirectory)
    {
      if (ImGui::Button("ROOT"))
      {
        assetDirectory = nullptr;
      }
    }
    for (Asset *asset : project->assets)
    {
      if (parent && asset->parent_id == parent->id || !parent && asset->parent_id.empty())
      {
        if (asset->type == AssetType::DIRECTORY)
        {
          if (ImGui::TreeNodeEx(asset->id.c_str()))
          {
            renderAssetsUI(asset);

            ImGui::TreePop();
          }
        }
        else
        {
          ImGuiTreeNodeFlags flags = ImGuiTreeNodeFlags_Leaf;

          if (ImGui::TreeNodeEx(asset->id.c_str(), flags))
          {
            if (ImGui::IsItemClicked())
            {
              selectedAsset = asset;
            }
            ImGui::TreePop();
          }
        }
      }
    }

    if (ImGui::Button(("New directory" + (parent ? "##" + parent->id : "")).c_str()))
    {
      auto asset = new Asset(AssetType::DIRECTORY, std::string("directory"));
      if (parent != nullptr)
      {
        asset->parent_id = parent->id;
      }
      project->assets.push_back(asset);
    }
  }

  void EditorManager::renderEntitiesUI(Entity *parent)
  {
    for (auto entity : loadedWorld->entities)
    {
      if (entity->parent == parent)
      {
        ImGuiTreeNodeFlags flags = ImGuiTreeNodeFlags_Leaf;

        if (ImGui::TreeNodeEx(
                (entity->id +
                 (entity->engineIdentifier == loadedWorld->mainCameraEntityId
                      ? " [main camera]"
                      : "") +
                 "##" + entity->engineIdentifier)
                    .c_str(),
                flags))
        {
          if (ImGui::IsItemClicked())
          {
            selectedEntity = entity;
          }
          ImGui::TreePop();
        }
      }
    }
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
    if (loadedWorld != nullptr)
    {
      for (Entity *entity : loadedWorld->entities)
      {
        entity->draw(deltaTime, view, projection);
      }
    }
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
