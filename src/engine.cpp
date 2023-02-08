#include "engine.h"
#include "editor_manager.h"
#include "game.h"

void Engine::Editor() {
  events.RUN_EDITOR = true;
  while (true) {
    if (events.RUN_EDITOR) {
      events.RUN_EDITOR = false;
      EditorManager *manager = new EditorManager(&events);
      editorManager->Run();
      delete manager;
    }

    if (events.RUN_GAME) {
      events.RUN_GAME = false;
      Project project;
      project.Load("./");
      Game *game = new Game(&project, &events);
      game->Run();
      delete game;
    }
  }
}

void Engine::Game() {
  events.RUN_GAME = true;
  Project project;
  project.Load("./");
  Game *game = new Game(&project, &events);
  game->Run();
  delete game;
}
