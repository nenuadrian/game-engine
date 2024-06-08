#include "asset_editor_plugin.h"

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
  void AssetEditorPlugin::RenderUI()
  {
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
        project.assets.push_back(asset);
      }
      else
      {
        printf("Error: %s\n", NFD_GetError());
      }
    }

    RenderAssetsUI(assetDirectory);

    ImGui::End();

    if (selectedAsset != nullptr)
    {
      RenderAssetUI();
    }
  }

  void AssetEditorPlugin::RenderAssetUI()
  {
    ImGui::Begin("Asset");

    ImGui::LabelText("EngineID", "%s", selectedAsset->engineIdentifier.c_str());
    ImGui::InputText("Identifier", &selectedAsset->id);
    ImGui::LabelText("Type", "%d", selectedAsset->type);
    ImGui::LabelText("File", "%s", selectedAsset->file.c_str());

    if (ImGui::Button("Delete"))
    {
      project.assets.erase(
          std::remove_if(project.assets.begin(), project.assets.end(),
                         [this](Asset *e)
                         { return e == selectedAsset; }),
          project.assets.end());
      selectedAsset = nullptr;
    }

    ImGui::End();
  }

  void AssetEditorPlugin::RenderAssetsUI(Asset *parent)
  {
    if (assetDirectory)
    {
      if (ImGui::Button("ROOT"))
      {
        assetDirectory = nullptr;
      }
    }
    for (Asset *asset : project.assets)
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
      project.assets.push_back(asset);
    }
  }

  void AssetEditorPlugin::Draw(float deltaTime, glm::mat4 view, glm::mat4 projection)
  {
  }

  void AssetEditorPlugin::RenderMenuBarUI()
  {
  }

  AssetEditorPlugin::~AssetEditorPlugin()
  {
  }

}