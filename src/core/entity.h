#pragma once
#include "glm/ext/matrix_transform.hpp"
#include "model.h"
#include "soloud.h"
#include "soloud_speech.h"
#include "soloud_thread.h"
#include "soloud_wav.h"
#include "window_opengl.h"
#include <LuaCpp.hpp>
#include <cstddef>
#include <iterator>
#include <string>
#include <vector>

namespace Hades {
class World;
class EditorManager;
class CameraEntity;

class Entity {
  LuaCpp::LuaContext ctx;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> xLua;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> yLua;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> zLua;
  std::shared_ptr<LuaCpp::Engine::LuaTNumber> deltaTimeLua;
  bool running;
  SoLoud::Soloud soloud;

public:
  glm::vec3 scale = glm::vec3(1, 1, 1);
  glm::vec3 rotation = glm::vec3(0, 0, 0);

  std::string engineIdentifier;
  std::string id;
  std::string script;
  std::string scriptError = "";

  glm::vec3 position = glm::vec3(1, 1, 1);

  Entity *parent;

  Entity();

  virtual void init(bool running, Window *window);
  virtual void draw(float deltaTime, glm::mat4 view, glm::mat4 projection);
  virtual void EditorUI(EditorManager *editor);

  virtual std::string type() { return "unknown"; };
  void play(const char *song);
  glm::mat4 entityMatrix() {
    glm::mat4 modelMatrix = glm::mat4(1.0f);
    modelMatrix = glm::scale(modelMatrix, scale);
    modelMatrix = glm::translate(modelMatrix, position);

    glm::mat4 rotate = glm::rotate(glm::mat4(1.0f), glm::radians(rotation.x),
                                   glm::vec3(1.0f, 0.0f, 0.0f)) *
                       glm::rotate(glm::mat4(1.0f), glm::radians(rotation.y),
                                   glm::vec3(0.0f, 1.0f, 0.0f)) *
                       glm::rotate(glm::mat4(1.0f), glm::radians(rotation.z),
                                   glm::vec3(0.0f, 0.0f, 1.0f));

    return modelMatrix * rotate;
  }
  virtual ~Entity() { soloud.deinit(); }
};

class Asset {

public:
  std::string engineIdentifier;
  std::string id;
  std::string file;
  bool directory;
  Asset *parent;
  Asset(std::string _file);
  Asset(std::string id, std::string file, std::string engineIdentifier)
      : id(id), file(file), engineIdentifier(engineIdentifier) {}
  void EditorUI(EditorManager *editor);
  bool isDirectory() { return directory; }
};

class Project;
class World {
public:
  std::string id;
  std::string name;
  std::string mainCameraEntityId = "";
  std::vector<Entity *> entities;
  World();
  World(std::string id, std::string name, std::string mainCameraEntityId)
      : id(id), name(name), mainCameraEntityId(mainCameraEntityId){};
  void init(Project *project, Window *w);
  CameraEntity* defaultCamera();
  ~World();
};

} // namespace Hades