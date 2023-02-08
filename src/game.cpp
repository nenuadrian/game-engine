#include "game.h"

static void mouse_callback(GLFWwindow *w, double x, double y) {
  Game *handler = reinterpret_cast<Game *>(glfwGetWindowUserPointer(w));
}

static void mouse_button_callback(GLFWwindow *w, int button, int action,
                                  int mods) {}

static void scroll_callback(GLFWwindow *w, double x, double y) {}

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
  // make sure the viewport matches the new window dimensions; note that width
  // and height will be significantly larger than specified on retina displays.
  glViewport(0, 0, width, height);
}

Game::Game(Project *project_, Events *events_) {
  project = project_;
  events = events_;
}

void Game::Init(GLFWwindow *w) { LoadWorld(w); }

void Game::LoadWorld(GLFWwindow *w) {
  Entity *defaultCamera = nullptr;
  for (World *w : project->worlds) {
    if (w->id == project->mainWorldId) {
      world = w;
      break;
    }
  }
  assert(world != nullptr);

  world->Init(project, w);
  for (Entity *entity : world->entities) {
    if (entity->engineIdentifier == world->mainCameraEntityId) {
      defaultCamera = entity;
      break;
    }
  }
  assert(defaultCamera != nullptr);

  camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
}

void Game::Draw(float deltaTime) {
  if (world != nullptr) {
    for (Entity *entity : world->entities) {
      glm::mat4 projection =
          glm::perspective(glm::radians(camera.Zoom),
                           (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);

      entity->Draw(deltaTime, camera, projection);
    }
  }
}

void Game::Run() {
  // glfw: initialize and configure
  // ------------------------------
  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

  // glfw window creation
  // --------------------
  GLFWwindow *window =
      glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Game", NULL, NULL);
  if (window == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return;
  }
  glfwMakeContextCurrent(window);

  Init(window);

  inputHandler = this;
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
  glfwSetCursorPosCallback(window, mouse_callback);
  glfwSetScrollCallback(window, scroll_callback);
  glfwSetMouseButtonCallback(window, mouse_button_callback);

  // glad: load all OpenGL function pointers
  // ---------------------------------------
  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return;
  }

  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  (void)io;
  ImGui::StyleColorsDark();

  // Setup Platform/Renderer backends
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init();

  int width, height;

  float deltaTime = 0.0f; // time between current frame and last frame
  float lastFrame = 0.0f;

  glfwSetWindowUserPointer(window, reinterpret_cast<void *>(this));

  // Loop until the user closes the window
  while (!glfwWindowShouldClose(window) && !events.CLOSE_GAME) {

    // Resize the viewport
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    GL_CHECK(glEnable(GL_DEPTH_TEST));
    GL_CHECK(glDepthFunc(GL_LESS));

    GL_CHECK(glClearColor(114, 144, 154, 0));
    GL_CHECK(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));
    float currentFrame = static_cast<float>(glfwGetTime());

    deltaTime = currentFrame - lastFrame;
    lastFrame = currentFrame;

    inputHandler->keyCallBack(window, deltaTime);

    Draw(deltaTime);

    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    if (ImGui::BeginMainMenuBar()) {
      if (ImGui::BeginMenu("Game")) {
        if (ImGui::MenuItem("Stop")) {
          events.RUN_EDITOR = true;
          events.CLOSE_GAME = true;
        }

        ImGui::EndMenu();
      }
    }
    ImGui::EndMainMenuBar();
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
  events.CLOSE_GAME = false;
}