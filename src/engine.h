

#include <cstddef>
#include <string>
#include <vector>

class Asset {

public:
  std::string name;
  std::string file;
  Asset(std::string file_);
};

class Entity {
public:
  std::string id;
  Entity *parent = nullptr;
  Entity();
};

class World {
public:
  std::string id;
  std::string name;
  std::vector<Asset *> assets;
  std::vector<Entity> entities;
  World();
};

class Project {
public:
  std::string title;
  std::string mainWorldId;
  std::vector<Asset> globalAssets;
  std::vector<World*> worlds;
  Project();
  void Load(std::string directory);
  World* NewWorld();
};

class EditorManager {

public:
  Project *project = nullptr;
  World *loadedWorld = nullptr;
  bool playing = false;
  EditorManager();

  void Load();
  void NewProject();

  void SelectWorld(World* world);
};

class Engine {
  EditorManager editorManager;

public:
  Engine();
  void Run();
  void Save(std::string directory);
};