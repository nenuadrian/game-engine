#include "engine.h"

#include "editor_manager.h"
#include "entity.h"
#include "game.h"

void Engine::RunEditor() {
  events.RUN_EDITOR = true;
  while (events.RUN_EDITOR || events.RUN_GAME) {
    if (events.RUN_EDITOR) {
      events.RUN_EDITOR = false;
      EditorManager *editorManager = new EditorManager(&events);
      editorManager->Run();
      delete editorManager;
    }

    if (events.RUN_GAME) {
      events.RUN_GAME = false;
      Project* project = new Project();
      project->Load("./");
      Game *game = new Game(project, &events);
      game->Run();
      delete game;
      delete project;
    }
  }
}

void Engine::RunGame() {
  events.RUN_GAME = true;
  Project project;
  project.Load("./");
  Game *game = new Game(&project, &events);
  game->Run();
  delete game;
}
