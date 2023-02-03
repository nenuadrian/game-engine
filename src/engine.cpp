#include "engine.h"

#include <stdio.h>

#define GL_SILENCE_DEPRECATION

// Without this gl.h gets included instead of gl3.h
#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

// For includes related to OpenGL, make sure their are included after glfw3.h
#include <OpenGL/gl3.h>

#include "../imgui/backends/imgui_impl_glfw.h"
#include "../imgui/backends/imgui_impl_opengl3.h"
#include "../imgui/imgui.h"
#include "../soloud/include/soloud.h"
#include "../soloud/include/soloud_speech.h"
#include "../soloud/include/soloud_thread.h"
#include "../soloud/include/soloud_wav.h"
#include <entt/entt.hpp>

#include "../nativefiledialog/src/include/nfd.h"
#include "nlohmann/json.hpp"
#include <fstream>

void play() {
  SoLoud::Soloud soloud; // SoLoud engine core
  SoLoud::Speech speech; // A sound source (speech, in this case)
  SoLoud::Wav gWave;     // One wave file
  gWave.load("iamtheprotectorofthissystem.wav"); // Load a wave

  // Configure sound source
  speech.setText("1 2 3   1 2 3   Hello world. Welcome to So-Loud.");

  // initialize SoLoud.
  soloud.init();

  // Play the sound source (we could do this several times if we wanted)
  soloud.play(gWave);

  // Wait until sounds have finished
  while (soloud.getActiveVoiceCount() > 0) {
    // Still going, sleep for a bit
    SoLoud::Thread::sleep(100);
  }

  soloud.play(speech);

  // Wait until sounds have finished
  while (soloud.getActiveVoiceCount() > 0) {
    // Still going, sleep for a bit
    SoLoud::Thread::sleep(100);
  }

  // Clean up SoLoud
  soloud.deinit();
}
void errorCallback(int error, const char *description) {
  fputs(description, stderr);
}

void keyCallback(GLFWwindow *window, int key, int scancode, int action,
                 int mods) {
  if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
    glfwSetWindowShouldClose(window, GLFW_TRUE);
}

void frameBufferResizeCallback(GLFWwindow *window, int width, int height) {
  glViewport(0, 0, width, height);
}

Engine::Engine() {}

void Engine::Run() {
  // Decide GL+GLSL versions
#if defined(IMGUI_IMPL_OPENGL_ES2)
  // GL ES 2.0 + GLSL 100
  const char *glsl_version = "#version 100";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
  glfwWindowHint(GLFW_CLIENT_API, GLFW_OPENGL_ES_API);
#elif defined(__APPLE__)
  // GL 3.2 + GLSL 150
  const char *glsl_version = "#version 150";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); // 3.2+ only
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);           // Required on Mac
#else
  // GL 3.0 + GLSL 130
  const char *glsl_version = "#version 130";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
  // glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+
  // only glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // 3.0+ only
#endif

  GLFWwindow *window;

  // Set callback for errors
  glfwSetErrorCallback(errorCallback);

  // Initialize the library
  if (!glfwInit())
    return;

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);

  // Without these two hints, nothing above OpenGL version 2.1 is supported
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GLFW_TRUE);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  // Create a windowed mode window and its OpenGL context
  window = glfwCreateWindow(640, 480, "Engine", NULL, NULL);
  if (!window) {
    glfwTerminate();
    return;
  }

  // Set callback for window
  glfwSetKeyCallback(window, keyCallback);

  // Set callback fro framebuffer
  glfwSetFramebufferSizeCallback(window, frameBufferResizeCallback);

  // Make the window's context current
  glfwMakeContextCurrent(window);

  // Used to avoid screen tearing
  glfwSwapInterval(1);

  // OpenGL initializations start from here
  glClearColor(0.2f, 0.3f, 0.3f, 1.0f);

  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  (void)io;
  // io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable
  // Keyboard Controls io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad; //
  // Enable Gamepad Controls

  // Setup Dear ImGui style
  ImGui::StyleColorsDark();
  // ImGui::StyleColorsLight();

  // Setup Platform/Renderer backends
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init(glsl_version);

  // Loop until the user closes the window
  while (!glfwWindowShouldClose(window)) {
    // Resize the viewport
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    // OpenGL Rendering related code
    glClear(GL_COLOR_BUFFER_BIT);

    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    if (editorManager.playing) {
      if (ImGui::BeginMainMenuBar()) {
        if (ImGui::BeginMenu("Game")) {
          if (ImGui::MenuItem("Stop")) {
            editorManager.playing = false;
          }

          ImGui::EndMenu();
        }
      }
      ImGui::EndMainMenuBar();

    } else {

      if (ImGui::BeginMainMenuBar()) {
        if (ImGui::BeginMenu("File")) {
          if (ImGui::MenuItem("New", "CTRL+N")) {
            editorManager.NewProject();
          }
          if (ImGui::MenuItem("Open", "CTRL+O")) {
            editorManager.Load();
          }
          if (editorManager.project != nullptr) {

            if (ImGui::MenuItem("Save", "CTRL+S")) {
              Save("./");
            }
          }
          if (ImGui::MenuItem("Sound")) {
            play();
          }

          if (ImGui::MenuItem("Exit")) {
            glfwSetWindowShouldClose(window, GL_TRUE);
          }

          ImGui::EndMenu();
        }
        if (editorManager.project != nullptr) {
          if (ImGui::BeginMenu("Editor")) {
            if (editorManager.loadedWorld != nullptr) {
              if (ImGui::MenuItem("Import Asset")) {

                nfdchar_t *outPath = NULL;
                nfdresult_t result = NFD_OpenDialog(NULL, NULL, &outPath);
                if (result == NFD_OKAY) {
                  Asset *asset = new Asset(outPath);
                  editorManager.loadedWorld->assets.push_back(asset);

                  free(outPath);
                } else {
                  printf("Error: %s\n", NFD_GetError());
                }
              }
              if (ImGui::MenuItem("New Entity")) {
                Entity entity;
                editorManager.loadedWorld->entities.push_back(entity);
              }
            }
            if (ImGui::BeginMenu("Worlds")) {
              if (ImGui::MenuItem("New World")) {
                World *world = editorManager.project->NewWorld();
                editorManager.SelectWorld(world);
              }
              ImGui::Separator();

              for (World *world : editorManager.project->worlds) {
                if (ImGui::MenuItem(world->name.c_str())) {
                  editorManager.SelectWorld(world);
                }
              }

              ImGui::EndMenu();
            }
            ImGui::EndMenu();
          }

          if (ImGui::BeginMenu("Game")) {
            if (ImGui::MenuItem("Play")) {
              editorManager.playing = true;
            }
            ImGui::EndMenu();
          }
        }
        ImGui::EndMainMenuBar();
        if (editorManager.loadedWorld != nullptr) {
          ImGui::Begin("Assets");
          for (Asset *asset : editorManager.loadedWorld->assets) {
            if (ImGui::Button(asset->name.c_str())) {
            }
          }
          ImGui::End();

          ImGui::Begin("Entities");
          for (Entity entity : editorManager.loadedWorld->entities) {
            if (ImGui::Button(entity.id.c_str())) {
            }
          }
          ImGui::End();
        }
      }
    }

    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

    // Swap front and back buffers
    glfwSwapBuffers(window);

    // Poll for and process events
    glfwPollEvents();
  }

  ImGui_ImplOpenGL3_Shutdown();
  ImGui_ImplGlfw_Shutdown();
  ImGui::DestroyContext();

  glfwDestroyWindow(window);
  glfwTerminate();
}

void Engine::Save(std::string directory) {
  nlohmann::json data = nlohmann::json::object();

  data["title"] = editorManager.project->title;

  std::vector<nlohmann::json> worldsVector = {};
  std::vector<nlohmann::json> assetsVector = {};
  std::vector<nlohmann::json> entitiesVector = {};
  for (World *world : editorManager.project->worlds) {
    nlohmann::json worldData = nlohmann::json::object();
    worldData["id"] = world->id;
    worldData["name"] = world->name;
    worldsVector.push_back(worldData);
    for (Asset *asset : world->assets) {
      nlohmann::json assetData = nlohmann::json::object();
      assetData["file"] = asset->file;
      assetData["name"] = asset->name;
      assetData["world"] = world->id;
      assetsVector.push_back(assetData);
    }

    for (Entity entity : world->entities) {
      nlohmann::json entityData = nlohmann::json::object();
      entityData["id"] = entity.id;
      entityData["name"] = entity.name;
      entityData["world"] = world->id;
      entitiesVector.push_back(entityData);
    }
  }

  data["worlds"] = worldsVector;
  data["assets"] = assetsVector;
  data["entities"] = entitiesVector;

  std::string s = data.dump();
  std::ofstream myfile;
  myfile.open(directory + "data.json");
  myfile << s;
  myfile.close();
}

Project::Project() {}

void Project::Load(std::string directory) {
  std::ifstream ifs(directory + "data.json");
  std::string content((std::istreambuf_iterator<char>(ifs)),
                      (std::istreambuf_iterator<char>()));
  ifs.close();

  auto data = nlohmann::json::parse(content);
  title = data["title"];

  for (auto worldData : data["worlds"]) {
    World *world = new World();
    world->id = worldData["id"];
    world->name = worldData["name"];
    worlds.push_back(world);
  }

  for (auto assetData : data["assets"]) {
    Asset *asset = new Asset(assetData["file"]);
    asset->name = assetData["name"];
    for (World *w : worlds) {
      if (w->id == assetData["world"]) {
        w->assets.push_back(asset);
      }
    }
  }

  for (auto entityData : data["entities"]) {
    Entity entity = Entity();
    entity.name = entityData["name"];
    entity.id = entityData["id"];
    for (World *w : worlds) {
      if (w->id == entityData["world"]) {
        w->entities.push_back(entity);
      }
    }
  }
}

World *Project::NewWorld() {
  World *world = new World();
  worlds.push_back(world);

  return world;
}

EditorManager::EditorManager() {}

void EditorManager::NewProject() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();

  World *world = project->NewWorld();
  SelectWorld(world);
}

void EditorManager::Load() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();
  project->Load("./");
}

void EditorManager::SelectWorld(World *world) { loadedWorld = world; }

World::World() {
  id = "new-id";
  name = "Untitled";
}

Asset::Asset(std::string file_) {
  file = file_;
  name = file_;
}

Entity::Entity() {
  id = "test";
  name = "Untitled";
}