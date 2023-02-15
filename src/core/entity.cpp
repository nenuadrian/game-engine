#include "entity.h"
#include "Engine/LuaTNumber.hpp"
#include "Engine/LuaTUserData.hpp"
#include "GLFW/glfw3.h"
#include "core/entity_camera.h"
#include "engine.h"
#include "glm/ext.hpp"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "model_complex.h"
#include "shaders/shader_generator.h"
#include <iostream>

static GLFWwindow *luaWindow;

namespace Hades {
static Entity *globalEntity;

extern "C" {
static int _keyIsPressed(lua_State *L) {
  int n = lua_gettop(L); /* number of arguments */

  int key = lua_tointeger(L, 1);
  bool result = glfwGetKey(luaWindow, key) == GLFW_PRESS;
  lua_pushboolean(L, result); /* second result */
  return 1;                   /* number of results */
}

static int _play(lua_State *L) {
  int n = lua_gettop(L); /* number of arguments */
  const char *song = lua_tostring(L, 1);
  globalEntity->play(song);
  return 0; /* number of results */
}
}

Entity::Entity() {
  engineIdentifier = Engine::newEngineId();
  id = "untitled" + engineIdentifier;
}

void Entity::init(bool running_, Window *window) {
  if (running_) {
    if (!script.empty()) {
      ctx = LuaCpp::LuaContext();
      xLua = std::make_shared<LuaCpp::Engine::LuaTNumber>(0);
      yLua = std::make_shared<LuaCpp::Engine::LuaTNumber>(0);
      zLua = std::make_shared<LuaCpp::Engine::LuaTNumber>(0);
      deltaTimeLua = std::make_shared<LuaCpp::Engine::LuaTNumber>(0);

      ctx.AddGlobalVariable("x", xLua);
      ctx.AddGlobalVariable("y", yLua);
      ctx.AddGlobalVariable("z", zLua);
      ctx.AddGlobalVariable("deltaTime", deltaTimeLua);

      std::shared_ptr<LuaCpp::Registry::LuaLibrary> lib =
          std::make_shared<LuaCpp::Registry::LuaLibrary>("engine");
      lib->AddCFunction("isKeyPressed", _keyIsPressed);

      ctx.AddLibrary(lib);
      luaWindow = ((WindowOpengl *)window)->w;
      ctx.CompileString(engineIdentifier, script);
    }
  }

  running = running_;
}

void Entity::play(const char *song) {
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

void Entity::draw(float deltaTime, glm::mat4 view, glm::mat4 projection) {
  if (running && !script.empty()) {
    deltaTimeLua->setValue(deltaTime);
    xLua->setValue(position.x);
    yLua->setValue(position.y);
    zLua->setValue(position.z);
    globalEntity = this;
    ctx.Run(engineIdentifier);
    position.x = xLua->getValue();
    position.y = yLua->getValue();
    position.z = zLua->getValue();
  }
}

void Entity::EditorUI(EditorManager *editor) {
  ImGui::InputText("ID", &id);

  if (ImGui::CollapsingHeader("Position & Scale")) {
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
  if (ImGui::CollapsingHeader("Script")) {

    ImGui::InputTextMultiline("Code", &script);

    if (!scriptError.empty()) {
      ImGui::Text("%s", scriptError.c_str());
    }

    if (ImGui::Button("Compile Script")) {
      scriptError = "";

      try {
        auto ctx = LuaCpp::LuaContext();
        ctx.CompileString(engineIdentifier, script);
      } catch (std::exception &e) {
        scriptError = e.what();
      }
    }
  }
}

CameraEntity *World::defaultCamera() {
  auto cam =
      std::find_if(entities.begin(), entities.end(), [this](Entity *entity) {
        return entity->engineIdentifier == mainCameraEntityId;
      });
  if (cam == entities.end()) {
    return nullptr;
  } else {
    return (CameraEntity *)*cam;
  }
}

void World::init(Project *project, Window *w) {
  for (Entity *entity : entities) {
    entity->init(true, w);
  }
}

Asset::Asset(std::string _file) {
  file = _file;

  engineIdentifier = std::to_string(Engine::newEngineId());
  id = engineIdentifier;
}



void Asset::EditorUI(EditorManager *editor) {
  ImGui::InputText("Identifier", &id);
}

} // namespace Hades