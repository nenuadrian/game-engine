

#include <string>

class Project {
public:
  std::string title;
  Project();
  void Load(std::string file);
};

class Engine {
  Project* project = nullptr;

public:
  Engine();
  void Run();
  void Save();
  void Load();
};