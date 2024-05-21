#pragma once

#include <iostream>
#include <string>
#include <vector>
#include <unordered_map>

namespace Hades
{

  enum class EventType
  {
    RUN_GAME,
    RUN_EDITOR,
    CLOSE_WINDOW,
    OPEN_PROJECT,
    OPEN_PROJECT_FROM_FILE,
    EVENT_COUNT // Helper to get the number of events
  };

  struct EventInfo
  {
    bool isSet = false;
    std::string data = "";
  };

  class Events
  {
  public:
    Events()
    {
      events.resize(static_cast<size_t>(EventType::EVENT_COUNT));
    }

    bool isEventSet(EventType event) const
    {
      return events[static_cast<size_t>(event)].isSet;
    }

    void setEvent(EventType event, const std::string &eventData = "")
    {
      events[static_cast<size_t>(event)].isSet = true;
      events[static_cast<size_t>(event)].data = eventData;
    }

    void unsetEvent(EventType event) {
        events[static_cast<size_t>(event)].isSet = false;
        events[static_cast<size_t>(event)].data.clear();
    }

    std::string getEventData(EventType event) const
    {
      return events[static_cast<size_t>(event)].data;
    }

  private:
    std::vector<EventInfo> events;
  };

} // namespace Hades