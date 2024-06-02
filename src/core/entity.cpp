#include "entity.h"
#include "GLFW/glfw3.h"
#include "core/entity_camera.h"
#include "engine.h"
#include "glm/ext.hpp"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "shaders/shader_generator.h"
#include <iostream>

namespace Hades
{

  Entity::Entity()
  {
    engineIdentifier = std::to_string(Engine::newEngineId());
    id = "untitled" + engineIdentifier;
  }

  void Entity::init(bool running_, Window *window)
  {
    if (running_)
    {
      if (!script.empty())
      {
      }
    }

    running = running_;
  }

  void Entity::play(const char *song)
  {
    SoLoud::Speech speech; // A sound source (speech, in this case)
    SoLoud::Wav gWave;     // One wave file
    gWave.load(song);      // Load a wave

    // Configure sound source
    // speech.setText("1 2 3   1 2 3   Hello world. Welcome to So-Loud.");

    // initialize SoLoud.
    soloud.init();

    // Play the sound source (we could do this several times if we wanted)
    soloud.play(gWave);
    /*
     // Wait until sounds have finished
     while (soloud.getActiveVoiceCount() > 0) {
       // Still going, sleep for a bit
       SoLoud::Thread::sleep(100);
     }

    soloud.play(speech);

     // Wait until sounds have finished
     while (soloud.getActiveVoiceCount() > 0) {
       // Still going, sleep for a bit
       SoLoud::Thread::sleep(100);
     }*/

    // Clean up SoLoud
  }

  void Entity::draw(float deltaTime, glm::mat4 view, glm::mat4 projection)
  {
    if (running && !script.empty())
    {
    }
  }

  void Entity::EditorUI(EditorManager *editor)
  {
    ImGui::InputText("ID", &id);

    if (ImGui::CollapsingHeader("Position & Scale"))
    {
      ImGui::Text("Position");
      ImGui::InputFloat("X", &position.x);
      ImGui::InputFloat("Y", &position.y);
      ImGui::InputFloat("Z", &position.z);
      ImGui::Text("Scale");
      ImGui::InputFloat("X##scalex", &scale.x);
      ImGui::InputFloat("Y##scaley", &scale.y);
      ImGui::InputFloat("Z##scalez", &scale.z);
      ImGui::Text("Rotate");
      ImGui::InputFloat("X##rotatex", &rotation.x);
      ImGui::InputFloat("Y##rotatey", &rotation.y);
      ImGui::InputFloat("Z##rotatez", &rotation.z);
    }
  }

  CameraEntity *World::defaultCamera()
  {
    auto cam =
        std::find_if(entities.begin(), entities.end(), [this](Entity *entity)
                     { return entity->engineIdentifier == mainCameraEntityId; });
    if (cam == entities.end())
    {
      return nullptr;
    }
    else
    {
      return (CameraEntity *)*cam;
    }
  }

  void World::init(Project *project, Window *w)
  {
    for (Entity *entity : entities)
    {
      entity->init(true, w);
    }
  }

} // namespace Hades