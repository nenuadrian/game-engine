
cmake_minimum_required(VERSION 2.8)

project(ENGINE)

find_package(OpenGL REQUIRED)
set(JSON_BuildTests
    OFF
    CACHE INTERNAL "")
option(YAML_CPP_BUILD_TOOLS "Enable testing and parse tools" OFF)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(BUILD_OPENGL3_DEMOS
    OFF
    CACHE BOOL "Set when you want to build the OpenGL3+ demos")
set(BUILD_CPU_DEMOS
    OFF
    CACHE BOOL "Set when you want to build the OpenGL3+ demos")
set(BUILD_EXAMPLES
    OFF
    CACHE BOOL " libsonly")

set(GLFW_BUILD_EXAMPLES
    OFF
    CACHE BOOL "GLFW lib only")
set(GLFW_BUILD_TESTS
    OFF
    CACHE BOOL "GLFW lib only")
set(GLFW_BUILD_DOCS
    OFF
    CACHE BOOL "GLFW lib only")
set(GLFW_BUILD_INSTALL
    OFF
    CACHE BOOL "GLFW lib only")
option(BUILD_UNIT_TESTS "Build Unit Tests" OFF)
option(BUILD_OPENGL3_DEMOS "Set when you want to build the OpenGL3+ demos" OFF)
include_directories(
  "libs/imgui"
  "libs/imgui/backends"
  ${OPENGL_INCLUDE_DIRS}
  "libs/entt"
  "libs/entt/single_include"
  "libs/json/include"
  "libs/soloud"
  "libs/soloud/include"
  "libs/Catch2/src"
  "libs/nativefiledialog/src"
  "libs/nativefiledialog/src/include"
  "libs/glm"
  "libs/glfw/include"
  "libs/glew/include"
  "libs/assimp/include"
  "libs/stb-cmake"
  "libs/glad/include"
  "libs/glad/src")

set(GLFW_BUILD_EXAMPLES
    OFF
    CACHE BOOL "GLFW lib only")
set(GLFW_BUILD_TESTS
    OFF
    CACHE BOOL "GLFW lib only")
set(GLFW_BUILD_DOCS
    OFF
    CACHE BOOL "GLFW lib only")
set(GLFW_BUILD_INSTALL
    OFF
    CACHE BOOL "GLFW lib only")
set(BUILD_EXAMPLES
    OFF
    CACHE BOOL " libsonly")

if(UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
endif()

if(APPLE)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -stdlib=libc++")
endif()

if(WIN32)
  set(CMAKE_EXE_LINKER_FLAGS
      "${CMAKE_EXE_LINKER_FLAGS} /SUBSYSTEM:WINDOWS /ENTRY:mainCRTStartup")
endif()

add_subdirectory(libs/glfw)
add_subdirectory(libs/entt)
add_subdirectory(libs/json)
add_subdirectory(libs/soloud/contrib)
add_subdirectory(libs/Catch2)
add_subdirectory(libs/glm)
add_subdirectory(libs/glew/build/cmake)
add_subdirectory(libs/assimp)

file(
  GLOB
  ENGINE-LIBS
  libs/nativefiledialog/src/include/nfd.h
  libs/nativefiledialog/src/nfd_common.c
  libs/nativefiledialog/src/nfd_common.h
  libs/nativefiledialog/src/nfd_cocoa.m
  libs/imgui/imgui.h
  libs/imgui/misc/cpp/imgui_stdlib.h
  libs/imgui/misc/cpp/imgui_stdlib.cpp
  libs/imgui/imgui.cpp
  libs/imgui/imgui_internal.h
  libs/imgui/imgui_tables.cpp
  libs/imgui/imgui_draw.cpp
  libs/imgui/imgui_widgets.cpp
  libs/imgui/imconfig.h
  libs/imgui/backends/imgui_impl_glfw.h
  libs/imgui/backends/imgui_impl_glfw.cpp
  libs/imgui/backends/imgui_impl_opengl2.h
  libs/imgui/backends/imgui_impl_opengl2.cpp
  libs/imgui/backends/imgui_impl_opengl3.h
  libs/imgui/backends/imgui_impl_opengl3.cpp
  libs/glad/src/glad.c)
file(GLOB ENGINE-SRC "src/*.h" "src/*.cpp")

link_libraries(${GLEW_LIBRARIES} soloud)
add_executable(ENGINE ${ENGINE-LIBS} ${ENGINE-SRC})

target_compile_features(ENGINE PRIVATE cxx_std_17)

target_link_libraries(
  ENGINE
  glew_s
  ${OPENGL_LIBRARIES}
  Catch2
  soloud
  glfw
  assimp
  ${GLFW_LIBRARIES}
  ${GLEW_LIBRARIES})

add_executable(tests tests/tests.cpp)
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain)