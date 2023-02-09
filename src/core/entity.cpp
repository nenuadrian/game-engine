#include "entity.h"
#include "Engine/LuaTNumber.hpp"
#include "Engine/LuaTUserData.hpp"
#include "GLFW/glfw3.h"
#include "LuaContext.hpp"
#include "camera.h"
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
  nlohmann::json data = nlohmann::json::object();
  data["id"] = id;
  data["type"] = type();
  data["engineIdentifier"] = engineIdentifier;
  data["x"] = x;
  data["y"] = y;
  data["z"] = z;
  data["script"] = script;
  data["scale"] = nlohmann::json::object();
  data["scale"]["x"] = scale.x;
  data["scale"]["y"] = scale.y;
  data["scale"]["z"] = scale.z;
  return data;
}

Entity::Entity(nlohmann::json data) : Entity() {
  id = data["id"];
  x = data["x"];
  y = data["y"];
  z = data["z"];
  script = data["script"];
  engineIdentifier = data["engineIdentifier"];
  scale = glm::vec3(data["scale"]["x"], data["scale"]["y"], data["scale"]["z"]);
}

CameraEntity::CameraEntity() : Entity() {
  ShaderGenerator generator = ShaderGenerator();

  shader = new Shader();
  shader->Load(generator.generateVertexShader(false).c_str(),
               generator.generateFragmentShader(0).c_str());
}

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

  if (ImGui::CollapsingHeader("Position & Scale")) {
    ImGui::Text("Position");
    ImGui::InputFloat("X", &x);
    ImGui::InputFloat("Y", &y);
    ImGui::InputFloat("Z", &z);
    ImGui::Text("Scale");
    ImGui::InputFloat("X##scalex", &scale.x);
    ImGui::InputFloat("Y##scaley", &scale.y);
    ImGui::InputFloat("Z##scalez", &scale.z);
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

void CameraEntity::Draw(float deltaTime, Camera camera, glm::mat4 projection) {
  
  
}