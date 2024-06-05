#include "engine.h"

#include "core/editor/asset_editor_plugin.h"
#include "core/editor/world_editor_plugin.h"
#include "core/editor/script_editor_plugin.h"
#include "editor/editor_manager.h"
#include "entity.h"
#include "game.h"
#include "json_export.h"
#include <fstream>
#include <memory>

namespace
{
  std::shared_ptr<Hades::EditorManager> initEditor(Hades::Engine *engine)
  {
    std::shared_ptr<Hades::EditorManager> editorManager = std::make_shared<Hades::EditorManager>(engine);
    editorManager->AddPlugin(new Hades::WorldEditorPlugin(engine, editorManager.get()));
    editorManager->AddPlugin(new Hades::AssetEditorPlugin(engine, editorManager.get()));
    editorManager->AddPlugin(new Hades::ScriptEditorPlugin(engine, editorManager.get()));

    return std::move(editorManager);
  }
}

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
        auto editorManager = initEditor(this);

        if (events.isEventSet(EventType::OPEN_PROJECT) || events.isEventSet(EventType::OPEN_PROJECT_FROM_FILE))
        {
          Project *project = nullptr;

          if (events.isEventSet(EventType::OPEN_PROJECT_FROM_FILE))
          {
            // from file
            std::ifstream ifs(events.getEventData(EventType::OPEN_PROJECT_FROM_FILE) + "/data.json");
            std::string content((std::istreambuf_iterator<char>(ifs)),
                                (std::istreambuf_iterator<char>()));
            ifs.close();
            events.unsetEvent(EventType::OPEN_PROJECT_FROM_FILE);
            project = Exporter::toProject(content);
            project->directory_path = events.getEventData(EventType::OPEN_PROJECT_FROM_FILE);
          }
          else if (events.isEventSet(EventType::OPEN_PROJECT))
          {
            project = Exporter::toProject(events.getEventData(EventType::OPEN_PROJECT));
            events.unsetEvent(EventType::OPEN_PROJECT);
          }

          if (project)
          {
            editorManager->load(project);
          }
        }
        editorManager->run();
      }

      if (events.isEventSet(EventType::RUN_GAME))
      {
        Project *project = nullptr;
        try
        {
          project = Exporter::toProject(events.getEventData(EventType::RUN_GAME));
          events.unsetEvent(EventType::RUN_GAME);
          auto game = std::make_shared<Game>(project, &events);
          game->run();
        }
        catch (const std::exception &e)
        {
          error(e.what());
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
    Project *project = Exporter::toProject(content);

    auto game = std::make_unique<Game>(project, &events);
    game->run();
    delete project;
  }

} // namespace Hades
