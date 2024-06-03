#include "world_manager.h"

#include "core/entities.h"
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
  void WorldManager::RenderUI()
  {
    if (!project)
    {
      return;
    }

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

        RenderEntitiesUI(nullptr);
      }
      ImGui::End();
    }

    if (selectedEntity != nullptr)
    {
      ImGui::Begin("Entity");

      selectedEntity->EditorUI(editorManager);

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

      if (ImGui::Button("Dismiss"))
      {
        selectedEntity = nullptr;
      }
      ImGui::End();
    }
  }
  void WorldManager::Draw(float deltaTime, glm::mat4 view, glm::mat4 projection)
  {
    if (loadedWorld != nullptr)
    {
      for (Entity *entity : loadedWorld->entities)
      {
        entity->draw(deltaTime, view, projection);
      }
    }
  }

  void WorldManager::RenderEntitiesUI(Entity *parent)
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

          RenderEntitiesUI(entity);

          ImGui::TreePop();
        }
      }
    }
  }

  void WorldManager::RenderMenuBarUI()
  {
    if (!project)
    {
      return;
    }
    if (ImGui::BeginMenu("Worlds"))
    {
      if (ImGui::MenuItem("New World"))
      {
        World *world = project->NewWorld();
        SelectWorld(world);
      }
      ImGui::Separator();

      for (auto world : project->worlds)
      {
        if (ImGui::MenuItem(
                (world.second->name +
                 (world.second->id == project->mainWorldId ? " (main)" : "") +
                 "##" + world.second->id)
                    .c_str()))
        {
          if (world.second->id != project->mainWorldId)
          {
            SelectWorld(world.second);
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
  }

  WorldManager::~WorldManager()
  {
  }

}