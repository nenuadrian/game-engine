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

static GLFWwindow *w;

extern "C" {
static int _keyIsPressed(lua_State *L) {
  int n = lua_gettop(L); /* number of arguments */

  int key = lua_tointeger(L, 1);
  bool result = glfwGetKey(w, key) == GLFW_PRESS;
  lua_pushboolean(L, result); /* second result */
  return 1;                   /* number of results */
}
}

Entity::Entity() {
  long int t = static_cast<long int>(time(NULL));
  engineIdentifier = std::to_string(t);
  id = std::to_string(t);
  name = "Untitled";
}

void Entity::Init(bool running_, GLFWwindow *window) {
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
    w = window;
    ctx.CompileString(engineIdentifier, script);
  }
  running = running_;
}

nlohmann::json Entity::Save() {
  nlohmann::json entityData = nlohmann::json::object();
  entityData["id"] = id;
  entityData["name"] = name;
  entityData["type"] = type();
  entityData["engineIdentifier"] = engineIdentifier;
  entityData["x"] = x;
  entityData["y"] = y;
  entityData["z"] = z;
  entityData["script"] = script;
  return entityData;
}

Entity::Entity(nlohmann::json data) : Entity() {
  name = data["name"];
  id = data["id"];
  x = data["x"];
  y = data["y"];
  z = data["z"];
  script = data["script"];
  engineIdentifier = data["engineIdentifier"];
}

ModelEntity::ModelEntity() : Entity() {
  name = "Model";

  shader = new Shader("../sample_project/3.3.shader.vs",
                      "../sample_project/3.3.shader.fs");
  GL_CHECK(glUseProgram(shader->ID));
  GL_CHECK(glUniform1i(
      glGetUniformLocation(shader->ID, std::string("texture_diffuse").c_str()),
      0));
  GL_CHECK(glUniform1i(
      glGetUniformLocation(shader->ID, std::string("texture_specular").c_str()),
      1));
  GL_CHECK(glUseProgram(0));

  model =
      new ModelComplex("../sample_project/backpack/12305_backpack_v2_l3.obj");
}

CameraEntity::CameraEntity() : Entity() { name = "camera"; }

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

void ModelEntity::Draw(float deltaTime, Camera camera, glm::mat4 projection) {
  Entity::Draw(deltaTime, camera, projection);

  glUseProgram(shader->ID);
  shader->setMat4("projection", projection);
  glm::mat4 view = camera.GetViewMatrix();
  glm::mat4 modelPosition = glm::mat4(1.0f);
  modelPosition = glm::translate(modelPosition, glm::vec3(x, y, z));
  shader->setMat4("view", view);
  shader->setMat4("model", modelPosition);
  model->Draw(shader->ID);
  GL_CHECK(glUseProgram(0));
}

void ModelEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Model");
  ImGui::Text("%s", model->name.c_str());

  if (ImGui::Button("Change Model")) {
    modelSelectionWindowOpen = true;
  }

  if (modelSelectionWindowOpen) {
    ImGui::Begin("Select Model");
    for (Asset *asset : loadedWorld->assets) {
      if (ImGui::Button((asset->id + " | " + asset->file + "##ent" +
                         engineIdentifier + "asset" + asset->id)
                            .c_str())) {
        modelSelectionWindowOpen = false;
        delete model;
        model = new ModelComplex(asset->file);
      }
    }

    if (ImGui::Button("Cancel")) {
      modelSelectionWindowOpen = false;
    }
    ImGui::End();
  }
}

void CameraEntity::EditorUI(World *loadedWorld) {
  Entity::EditorUI(loadedWorld);
  ImGui::Text("Camera");
  if (loadedWorld->defaultCameraEntityId != engineIdentifier) {
    if (ImGui::Button("Set as default camera")) {
      loadedWorld->defaultCameraEntityId = engineIdentifier;
    }
  }
}

void Entity::EditorUI(World *loadedWorld) {
  ImGui::Text("EngineID");
  ImGui::Text("%s", engineIdentifier.c_str());
  ImGui::InputText("ID", &id);
  ImGui::InputText("Name", &name);
  ImGui::InputFloat("X", &x);
  ImGui::InputFloat("Y", &y);
  ImGui::InputFloat("Z", &z);
  ImGui::InputTextMultiline("Script", &script);

  if (scriptError != "") {
    ImGui::Text("%s", scriptError.c_str());
  }

  if (ImGui::Button("Compile Script")) {
    scriptError = "";

    try {
      ctx.CompileString(engineIdentifier, script);

    } catch (std::exception &e) {
      scriptError = e.what();
    }
  }
}

ModelEntity::ModelEntity(nlohmann::json data) : Entity(data) {}

nlohmann::json ModelEntity::Save() {
  nlohmann::json data = Entity::Save();

  return data;
}

ModelEntity::~ModelEntity() {
  delete model;
  delete shader;
}

World::World() {
  long int t = static_cast<long int>(time(NULL));

  id = std::to_string(t);
  name = "Untitled";
}

World::World(nlohmann::json data) : World() {
  id = data["id"];
  name = data["name"];
  defaultCameraEntityId = data["defaultCameraEntityId"];
}

Asset::Asset(nlohmann::json data) {
  file = data["file"];
  id = data["id"];
  engineIdentifier = data["engineIdentifier"];
}

Asset::Asset(const char *file_) {
  file = file_;
  long int t = static_cast<long int>(time(NULL));
  engineIdentifier = std::to_string(t);
  id = std::to_string(t);
}
