#pragma once
#include "model.h"
#include "nlohmann/json.hpp"
#include "window_opengl.h"
#include <LuaCpp.hpp>
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>

class World;

class Entity {
  LuaCpp::LuaContext ctx;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> xLua;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> yLua;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> zLua;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> deltaTimeLua;
  bool running;

protected:
  glm::vec3 scale = glm::vec3(1, 1, 1);

public:
  std::string engineIdentifier;
  std::string id;
  std::string script;
  std::string scriptError = "";

  glm::vec3 position = glm::vec3(1, 1, 1);

  Entity();
  Entity(nlohmann::json data);

  virtual void Init(bool running, Window *window);
  virtual void Draw(float deltaTime, glm::mat4 view, glm::mat4 projection);
  virtual void EditorUI(World *loadedWorld);
  virtual nlohmann::json JSON();
  virtual std::string type() { return "unknown"; };
};


class Asset {

public:
  std::string engineIdentifier;
  std::string id;
  std::string file;
  Asset(std::string _file);
  Asset(nlohmann::json data);
};

class Project;
class World {
public:
  std::string id;
  std::string name;
  std::string mainCameraEntityId = "";
  std::vector<Asset *> assets;
  std::vector<Entity *> entities;
  World();
  World(nlohmann::json data);
  void Init(Project *project, Window *w);
  ~World();
};
