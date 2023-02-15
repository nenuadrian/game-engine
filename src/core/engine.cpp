#include "engine.h"

#include "editor/editor_manager.h"
#include "entity.h"
#include "game.h"
#include "json_export.h"
#include <fstream>

namespace Hades {
using namespace std;

void Engine::RunEditor() {
  events.RUN_EDITOR = true;
  while (events.RUN_EDITOR || events.RUN_GAME) {
    if (events.RUN_EDITOR) {
      events.RUN_EDITOR = false;
      EditorManager *editorManager = new EditorManager(this);

      if (!events.data.empty()) {
        Project *project;

        if (events.OPEN_PROJECT) {
          events.OPEN_PROJECT = false;
          // from file
          std::ifstream ifs(events.data);
          std::string content((std::istreambuf_iterator<char>(ifs)),
                              (std::istreambuf_iterator<char>()));
          ifs.close();
          project = JSONExporter::toProject(content);
        } else {
          project = JSONExporter::toProject(events.data);
        }

        editorManager->load(project);
        editorManager->SelectWorld(project->mainWorldId);

        events.data = "";
      }
      editorManager->run();
      delete editorManager;
    }

    if (events.RUN_GAME) {
      events.RUN_GAME = false;
      Game *game = nullptr;
      Project *project = nullptr;
      try {
        project = JSONExporter::toProject(events.data);
        game = new Game(project, &events);
        game->run();
      } catch (const std::exception &e) {
        error(e.what());
      }
      if (game) {
        delete game;
      }
      if (project) {
        delete game;
      }
      events.RUN_EDITOR = true;
    }
  }
}

void Engine::RunGame() {
  events.RUN_GAME = true;
  std::ifstream ifs("./");
  std::string content((std::istreambuf_iterator<char>(ifs)),
                      (std::istreambuf_iterator<char>()));
  ifs.close();
  auto project = JSONExporter::toProject(content);

  Game *game = new Game(project, &events);
  game->run();
  delete game;
  delete project;
}

} // namespace Hades
