#include "engine.h"

#include "core/editor/asset_editor_plugin.h"
#include "core/editor/world_editor_plugin.h"
#include "core/editor/script_editor_plugin.h"
#include "editor/editor_manager.h"
#include "entity.h"
#include "game.h"
#include "core/serialization/importer.h"
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
      if (events.isEventSetAndUnset(EventType::RUN_EDITOR))
      {
        if (events.isEventSet(EventType::OPEN_PROJECT) || events.isEventSet(EventType::OPEN_PROJECT_FROM_FILE))
        {
          if (events.isEventSet(EventType::OPEN_PROJECT_FROM_FILE))
          {
            // from file
            std::ifstream ifs(events.getEventData(EventType::OPEN_PROJECT_FROM_FILE) + "/data.json");
            std::string content((std::istreambuf_iterator<char>(ifs)),
                                (std::istreambuf_iterator<char>()));
            ifs.close();
            events.unsetEvent(EventType::OPEN_PROJECT_FROM_FILE);
            Project project = Importer::Unserialize(content);
            project.directory_path = events.getEventData(EventType::OPEN_PROJECT_FROM_FILE);
            auto editorManager = initEditor(this);
            editorManager->load(project);
            editorManager->run();
          }
          else if (events.isEventSet(EventType::OPEN_PROJECT))
          {
            Project project = Importer::Unserialize(events.getEventData(EventType::OPEN_PROJECT));
            events.unsetEvent(EventType::OPEN_PROJECT);
            auto editorManager = initEditor(this);
            editorManager->load(project);
            editorManager->run();
          }
        }
        else
        {
          auto editorManager = initEditor(this);
          editorManager->run();
        }
      }

      if (events.isEventSet(EventType::RUN_GAME))
      {
        try
        {
          auto project = Importer::Unserialize(events.getEventData(EventType::RUN_GAME));
          events.unsetEvent(EventType::RUN_GAME);
          auto game = std::make_shared<Game>(project, &events);
          game->run();
        }
        catch (const std::exception &e)
        {
          error(e.what());
        }
        events.setEvent(EventType::RUN_EDITOR);
      }
    }
  }

  void Engine::RunGame(std::string from_path)
  {
    events.setEvent(EventType::RUN_GAME);

    std::ifstream ifs(from_path);
    std::string content((std::istreambuf_iterator<char>(ifs)),
                        (std::istreambuf_iterator<char>()));
    ifs.close();
    // Explicitly specify the type of 'project' variable
    Project project = Importer::Unserialize(content);

    auto game = std::make_unique<Game>(project, &events);
    game->run();
  }

} // namespace Hades
