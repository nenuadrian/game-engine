#include "entity.h"
#include "Engine/LuaTNumber.hpp"
#include "Engine/LuaTUserData.hpp"
#include "GLFW/glfw3.h"
#include "LuaContext.hpp"
#include "glm/ext.hpp"
#include "glm/fwd.hpp"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include "misc/cpp/imgui_stdlib.h"
#include "model_complex.h"
#include "shaders/shader_generator.h"
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

nlohmann::json vec3JSON(glm::vec3 v) {
  auto json = nlohmann::json::object();
  json["x"] = v.x;
  json["y"] = v.y;
  json["z"] = v.z;
  return json;
}

nlohmann::json Entity::JSON() {
  nlohmann::json data = nlohmann::json::object();
  data["id"] = id;
  data["type"] = type();
  data["engineIdentifier"] = engineIdentifier;
  data["position"] = vec3JSON(position);
  data["script"] = script;
  data["scale"] = vec3JSON(scale);
  data["rotation"] = vec3JSON(rotation);
  return data;
}

glm::vec3 JSONvec3(nlohmann::json data) {
  return glm::vec3(data["x"], data["y"], data["z"]);
}

Entity::Entity(nlohmann::json data) : Entity() {
  id = data["id"];
  script = data["script"];
  engineIdentifier = data["engineIdentifier"];
  position = JSONvec3(data["position"]);
  scale = JSONvec3(data["scale"]);
  rotation = JSONvec3(data["rotation"]);
}

void Entity::draw(float deltaTime, glm::mat4 view, glm::mat4 projection) {
  if (running && !script.empty()) {
    deltaTimeLua->setValue(deltaTime);
    xLua->setValue(position.x);
    yLua->setValue(position.y);
    zLua->setValue(position.z);
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

void World::init(Project *project, Window *w) {
  for (Entity *entity : entities) {
    entity->init(true, w);
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
}

void Asset::EditorUI(EditorManager *editor) {
  ImGui::InputText("Identifier", &id);
}
