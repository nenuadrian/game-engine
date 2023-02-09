#include "entity.h"
#include "Engine/LuaTNumber.hpp"
#include "Engine/LuaTUserData.hpp"
#include "GLFW/glfw3.h"
#include "LuaContext.hpp"
#include "camera.h"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "model_complex.h"
#include <iostream>

static GLFWwindow *luaWindow;

extern "C" {
static int _keyIsPressed(lua_State *L) {
  int n = lua_gettop(L); /* number of arguments */

  int key = lua_tointeger(L, 1);
  bool result = glfwGetKey(luaWindow, key) == GLFW_PRESS;
  lua_pushboolean(L, result); /* second result */
  return 1;                   /* number of results */
}
}

Entity::Entity() {
  long int t = static_cast<long int>(time(NULL));
  engineIdentifier = std::to_string(t);
  id = "untitled" + std::to_string(t);
}

void Entity::Init(bool running_, Window *window) {
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

nlohmann::json Entity::JSON() {
  nlohmann::json entityData = nlohmann::json::object();
  entityData["id"] = id;
  entityData["type"] = type();
  entityData["engineIdentifier"] = engineIdentifier;
  entityData["x"] = x;
  entityData["y"] = y;
  entityData["z"] = z;
  entityData["script"] = script;
  return entityData;
}

Entity::Entity(nlohmann::json data) : Entity() {
  id = data["id"];
  x = data["x"];
  y = data["y"];
  z = data["z"];
  script = data["script"];
  engineIdentifier = data["engineIdentifier"];
}

CameraEntity::CameraEntity() : Entity() {}

void Entity::Draw(float deltaTime, Camera camera, glm::mat4 projection) {
  if (running && !script.empty()) {
    deltaTimeLua->setValue(deltaTime);
    xLua->setValue(x);
    yLua->setValue(y);
    zLua->setValue(z);
    ctx.Run(engineIdentifier);
    x = xLua->getValue();
    y = yLua->getValue();
    z = zLua->getValue();
  }
}

void CameraEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Camera");
  if (loadedWorld->mainCameraEntityId != engineIdentifier) {
    if (ImGui::Button("Set as default camera")) {
      loadedWorld->mainCameraEntityId = engineIdentifier;
    }
  }
}

void Entity::EditorUI(World *loadedWorld) {
  ImGui::Text("EngineID: %s", engineIdentifier.c_str());
  ImGui::InputText("ID", &id);
  ImGui::InputFloat("X", &x);
  ImGui::InputFloat("Y", &y);
  ImGui::InputFloat("Z", &z);
  if (ImGui::CollapsingHeader("Script")) {

    ImGui::InputTextMultiline("Code", &script);

    if (scriptError != "") {
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

World::World() {
  long int t = static_cast<long int>(time(NULL));

  id = std::to_string(t);
  name = "Untitled";
}

World::World(nlohmann::json data) : World() {
  id = data["id"];
  name = data["name"];
  mainCameraEntityId = data["mainCameraEntityId"];
}

void World::Init(Project *project) {}

void World::Init(Project *project, Window *w) {
  for (Entity *entity : entities) {
    entity->Init(true, w);
  }
}

Asset::Asset(nlohmann::json data) {
  file = data["file"];
  id = data["id"];
  engineIdentifier = data["engineIdentifier"];
}

Asset::Asset(std::string _file) {
  file = _file;
  long int t = static_cast<long int>(time(NULL));
  engineIdentifier = std::to_string(t);
  id = std::to_string(t);
}

World::~World() {
  for (Entity *entity : entities) {
    delete entity;
  }

  for (Asset *asset : assets) {
    delete asset;
  }
}