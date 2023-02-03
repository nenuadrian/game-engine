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
    if (ImGui::BeginMainMenuBar()) {
      if (ImGui::BeginMenu("File")) {
        if (ImGui::MenuItem("New", "CTRL+N")) {
        }
        if (ImGui::MenuItem("Open", "CTRL+O")) {
          Load();
        }
        if (ImGui::MenuItem("Save", "CTRL+S")) {
          Save();
        }

        if (ImGui::MenuItem("Sound")) {
          play();
        }

        if (ImGui::MenuItem("Exit")) {
          glfwSetWindowShouldClose(window, GL_TRUE);
        }

        ImGui::EndMenu();
      }
      if (project != nullptr) {
        if (ImGui::BeginMenu("Editor")) {
          if (ImGui::MenuItem("New Scene")) {
          }

          if (ImGui::MenuItem("Import Asset")) {
          }
          ImGui::EndMenu();
        }

        if (ImGui::BeginMenu("Game")) {
          if (ImGui::MenuItem("Play")) {
          }
          ImGui::EndMenu();
        }
      }
      ImGui::EndMainMenuBar();
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

void Engine::Save() {
  nlohmann::json data = nlohmann::json::object();
  /*std::vector<nlohmann::json> modelsVector = { };
  for (auto t : assetManager->models) {
      nlohmann::json model = nlohmann::json::object();
      model["name"] = t->name;
      model["uuid"] = t->uuid;
      model["type"] = t->type;
      if (ModelComplex* complex = dynamic_cast<ModelComplex*>(t))
      {
          model["path"] = complex->path;
      }
      modelsVector.push_back(model);
  }

  data["models"] = modelsVector;
  std::vector<nlohmann::json> entitiesVector = { };

  auto view = manager->registry.view<Thing*>();
  for (auto [e, thing] : view.each()) {
      nlohmann::json entity = nlohmann::json::object();
      entity["uuid"] = thing->uuid;
      entity["x"] = thing->x;
      entity["y"] = thing->y;
      entity["z"] = thing->z;
      entity["model"] = thing->model->uuid;
      if (manager->registry.any_of<Script*>(e)) {
          auto script = manager->registry.get<Script*>(entity);
          entity["script"] = script->id;
      }
      entitiesVector.push_back(entity);
  }

  data["entities"] = entitiesVector;*/
  data["title"] = project->title;
  std::string s = data.dump();
  std::ofstream myfile;
  myfile.open("example.json");
  myfile << s;
  myfile.close();
}

void Engine::Load() {
  if (project != nullptr) {
    delete project;
  }
  project = new Project();
  project->Load("example.json");
}

Project::Project() {}

void Project::Load(std::string file) {
  std::ifstream ifs("example.json");
  std::string content((std::istreambuf_iterator<char>(ifs)),
                      (std::istreambuf_iterator<char>()));
  ifs.close();

  auto j3 = nlohmann::json::parse(content);

  title = j3["title"];
}