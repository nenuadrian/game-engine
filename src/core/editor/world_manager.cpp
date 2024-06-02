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

    ImGui::Begin("Assets");

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

    RenderAssetsUI(assetDirectory);

    ImGui::End();

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
      ImGui::End();
    }

    if (selectedAsset != nullptr)
    {
      RenderAssetUI();
    }
  }

  void WorldManager::RenderAssetUI()
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

    ImGui::End();
  }

  void WorldManager::RenderAssetsUI(Asset *parent)
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
      if (asset->type == AssetType::SCRIPT)
      {
        continue;
      }

      if (parent && asset->parent_id == parent->id || !parent && asset->parent_id.empty())
      {
        if (asset->type == AssetType::DIRECTORY)
        {
          if (ImGui::TreeNodeEx(asset->id.c_str()))
          {
            RenderAssetsUI(asset);

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
            SelectWorld(world);
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