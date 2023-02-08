#include <glad/glad.h>

#include <GLFW/glfw3.h>
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/gl3ext.h>
#endif

#include "engine.h"
#include "game.h"
#define GLFW_INCLUDE_NONE

#include "editor_manager.h"
#include <cassert>
#include <iostream>
#include <stdio.h>
#include <string>

#include "../imgui/backends/imgui_impl_glfw.h"
#include "../imgui/backends/imgui_impl_opengl3.h"
#include "../imgui/imgui.h"

#include "glm/ext.hpp"

void Engine::Editor() {
  events.RUN_EDITOR = true;
  while (true) {
    if (events.RUN_EDITOR) {
      events.RUN_EDITOR = false;
      EditorManager editorManager(&events);
      editorManager.Run();
    }

    if (events.RUN_GAME) {
      events.RUN_GAME = false;
      Project project;
      project.Load("./");
      Game *game = new Game(&project, &events);
      game->Run();
    }
  }
}
