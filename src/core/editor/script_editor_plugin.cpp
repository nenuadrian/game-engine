#include "script_editor_plugin.h"

#include "core/entities.h"
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
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

  void ScriptEditorPlugin::RenderMenuBarUI()
  {
  }

  /**
   * @brief Renders the user interface for managing scripts.
   */
  void ScriptEditorPlugin::RenderUI()
  {
    ImGui::Begin("Scripts");

    if (ImGui::Button("New Script"))
    {
      auto asset = new Asset(AssetType::SCRIPT);
      std::ofstream myfile;
      myfile.open(project.directory_path + "/script-" + asset->engineIdentifier + ".c");
      myfile << "test";
      myfile.close();
      project.assets.push_back(asset);
      selectedAsset = asset;
    }

    for (Asset *asset : project.assets)
    {
      if (asset->type != AssetType::SCRIPT)
      {
        continue;
      }
      if (ImGui::Button(asset->id.c_str()))
      {
        SelectScript(asset);
      }
    }

    ImGui::End();

    if (selectedAsset != nullptr)
    {
      ImGui::Begin("Script");
      ImGui::InputText("Identifier", &selectedAsset->id);

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

      if (ImGui::Button("Delete"))
      {
        project.assets.erase(
            std::remove_if(project.assets.begin(), project.assets.end(),
                           [this](Asset *e)
                           { return e == selectedAsset; }),
            project.assets.end());
        selectedAsset = nullptr;
      }

      if (ImGui::Button("Close"))
      {
        selectedAsset = nullptr;
      }
      ImGui::End();
    }
  }

  ScriptEditorPlugin::~ScriptEditorPlugin()
  {
  }

}