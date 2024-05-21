#include "engine.h"

#include "editor/editor_manager.h"
#include "entity.h"
#include "game.h"
#include "json_export.h"
#include <fstream>

namespace Hades
{
  using namespace std;

  void Engine::RunEditor()
  {
    events.setEvent(EventType::RUN_EDITOR);
    while (events.isEventSet(EventType::RUN_EDITOR) || events.isEventSet(EventType::RUN_GAME))
    {
      if (events.isEventSet(EventType::RUN_EDITOR))
      {
        events.unsetEvent(EventType::RUN_EDITOR);

        EditorManager *editorManager = new EditorManager(this);

        if (events.isEventSet(EventType::OPEN_PROJECT) || events.isEventSet(EventType::OPEN_PROJECT_FROM_FILE))
        {
          Project *project;

          if (events.isEventSet(EventType::OPEN_PROJECT_FROM_FILE))
          {
            // from file
            std::ifstream ifs(events.getEventData(EventType::OPEN_PROJECT_FROM_FILE));
            std::string content((std::istreambuf_iterator<char>(ifs)),
                                (std::istreambuf_iterator<char>()));
            ifs.close();
            events.unsetEvent(EventType::OPEN_PROJECT_FROM_FILE);
            project = JSONExporter::toProject(content);
          }
          else
          {
            project = JSONExporter::toProject(events.getEventData(EventType::OPEN_PROJECT));
            events.unsetEvent(EventType::OPEN_PROJECT);
          }

          editorManager->load(project);
          editorManager->SelectWorld(project->mainWorldId);
        }
        editorManager->run();
        delete editorManager;
      }

      if (events.isEventSet(EventType::RUN_GAME))
      {
        Game *game = nullptr;
        Project *project = nullptr;
        try
        {
          project = JSONExporter::toProject(events.getEventData(EventType::RUN_GAME));
          events.unsetEvent(EventType::RUN_GAME);
          game = new Game(project, &events);
          game->run();
        }
        catch (const std::exception &e)
        {
          error(e.what());
        }
        if (game)
        {
          delete game;
        }
        if (project)
        {
          delete project;
        }
        events.setEvent(EventType::RUN_EDITOR);
      }
    }
  }

  void Engine::RunGame()
  {
    events.setEvent(EventType::RUN_GAME);

    std::ifstream ifs("./");
    std::string content((std::istreambuf_iterator<char>(ifs)),
                        (std::istreambuf_iterator<char>()));
    ifs.close();
    // Explicitly specify the type of 'project' variable
    Project *project = JSONExporter::toProject(content);

    Game *game = new Game(project, &events);
    game->run();
    delete game;
    delete project;
  }

} // namespace Hades
