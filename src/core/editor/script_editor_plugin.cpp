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
    if (false && ImGui::BeginMenu("Scripts"))
    {
      ImGui::EndMenu();
    }
  }

  /**
   * @brief Renders the user interface for managing scripts.
   */
  void ScriptEditorPlugin::RenderUI()
  {
    ImGui::Begin("Scripts");

    if (ImGui::Button("New Script"))
    {
      std::__fs::filesystem::create_directories(project.absolute_path / "assets/scripts");
      auto asset = new Asset(AssetType::SCRIPT, "id", "script-test.cpp", "assets/scripts");
      std::ofstream myfile;
      myfile.open(project.absolute_path / asset->relative_path / asset->filename);
      myfile << R"(
        #include <iostream>

        extern "C"
        {
          void sayHello()
          {
            std::cout << "Hello from the dynamically loaded library updated!" << std::endl;
          }
        }
      )";
      myfile.close();
      project.assets.push_back(asset);
      selected_script = asset;
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

    if (selected_script != nullptr)
    {
      ImGui::Begin("Script");
      ImGui::InputText("Identifier", &selected_script->id);
      ImGui::LabelText("Relative Path", "%s", selected_script->relative_path.c_str());
      ImGui::LabelText("File", "%s", selected_script->filename.c_str());

      if (ImGui::Button("Compile"))
      {
        try
        {
          // selected_script->Compile();
          std::__fs::filesystem::create_directories(project.absolute_path / "build");
          auto lib_path = std::string(project.absolute_path / "build" / selected_script->filename) + ".dylib";
          std::string command = "g++ -dynamiclib -o " + lib_path + " " + std::string(project.absolute_path / selected_script->relative_path / selected_script->filename);
          engine->info(exec(command.c_str()));

          selected_script->build_handle = dlopen(lib_path.c_str(), RTLD_NOW);
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
                           { return e == selected_script; }),
            project.assets.end());
        selected_script = nullptr;
      }

      if (ImGui::Button("Close"))
      {
        selected_script = nullptr;
      }
      ImGui::End();
    }
  }

  ScriptEditorPlugin::~ScriptEditorPlugin()
  {
  }

}