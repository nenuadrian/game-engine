#include "engine.h"

#include "editor/editor_manager.h"
#include "entity.h"
#include "game.h"

void Engine::RunEditor() {
  events.RUN_EDITOR = true;
  while (events.RUN_EDITOR || events.RUN_GAME) {
    if (events.RUN_EDITOR) {
      events.RUN_EDITOR = false;
      EditorManager *editorManager = new EditorManager(&events);

      if (!events.data.empty()) {
        Project *project = new Project();

        if (events.OPEN_PROJECT) {
          events.OPEN_PROJECT = false;
          project->load(events.data);
        } else {
          project->LoadJSON(events.data);
        }
        editorManager->load(project);

        events.data = "";
      }
      editorManager->run();
      delete editorManager;
    }

    if (events.RUN_GAME) {
      events.RUN_GAME = false;
      Project *project = new Project();
      project->LoadJSON(events.data);
      Game *game = new Game(project, &events);
      game->run();
      delete game;
      delete project;
    }
  }
}

void Engine::RunGame() {
  events.RUN_GAME = true;
  Project project;
  project.load("./");
  Game *game = new Game(&project, &events);
  game->run();
  delete game;
}
