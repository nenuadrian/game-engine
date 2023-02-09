#pragma once
#include "camera.h"
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

public:
  std::string engineIdentifier;
  std::string id;
  std::string name;
  std::string script;
  std::string scriptError = "";

  float x = 0, y = 0, z = 0;

  Entity();
  Entity(nlohmann::json data);

  virtual void Init(bool running, Window *window);
  virtual void Draw(float deltaTime, Camera camera, glm::mat4 projection);
  virtual void EditorUI(World *loadedWorld);
  virtual nlohmann::json JSON();
  virtual std::string type() { return "unknown"; };
};

class CameraEntity : public Entity {
public:
  CameraEntity();
  CameraEntity(nlohmann::json data) : Entity(data) {}
  void EditorUI(World *loadedWorld) override;

  std::string type() override { return "camera"; };
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
  void Init(Project *project);
  void Init(Project *project, Window *w);
  void Uninit();
};
