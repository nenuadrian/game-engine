cmake_minimum_required( VERSION 2.8 )

project( HADES-CORE )

find_package( OpenGL REQUIRED )
set(JSON_BuildTests OFF CACHE INTERNAL "")
option(YAML_CPP_BUILD_TOOLS "Enable testing and parse tools" OFF)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)


set(BUILD_OPENGL3_DEMOS OFF CACHE BOOL  "Set when you want to build the OpenGL3+ demos" )
set(BUILD_CPU_DEMOS OFF CACHE BOOL  "Set when you want to build the OpenGL3+ demos" )
set( BUILD_EXAMPLES OFF CACHE BOOL  " libsonly" )

OPTION(BUILD_UNIT_TESTS "Build Unit Tests"	OFF)
OPTION(BUILD_OPENGL3_DEMOS "Set when you want to build the OpenGL3+ demos" 	OFF)
include_directories(
"imgui"
"imgui/backends"
 ${OPENGL_INCLUDE_DIRS} 
 "entt" 
 "entt/single_include" 
 "json/include"
 "soloud"
 "soloud/include"
 "Catch2/src"
 "nativefiledialog/src"
 "nativefiledialog/src/include"
)

set( GLFW_BUILD_EXAMPLES OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_BUILD_TESTS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_BUILD_INSTALL OFF CACHE BOOL  "GLFW lib only" )
set( BUILD_EXAMPLES OFF CACHE BOOL  " libsonly" )



if( UNIX )
    SET( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17" )
endif()

if( APPLE )
    SET( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -stdlib=libc++" )
endif()

if( WIN32 )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /SUBSYSTEM:WINDOWS /ENTRY:mainCRTStartup" )
endif()


add_subdirectory( glfw )
add_subdirectory( entt)
add_subdirectory( json)
add_subdirectory( soloud/contrib)
add_subdirectory( Catch2)



file(GLOB HADES-CORE-LIBS
"nativefiledialog/src/include/nfd.h"
"nativefiledialog/src/nfd_common.c"
"nativefiledialog/src/nfd_common.h"
"nativefiledialog/src/nfd_cocoa.m"
imgui/imgui.h
     imgui/imgui_demo.cpp
     imgui/imgui.cpp
     imgui/imgui_internal.h
   imgui/imgui_tables.cpp
     imgui/imgui_draw.cpp
     imgui/imgui_widgets.cpp
     imgui/imconfig.h
     imgui/backends/imgui_impl_glfw.h
     imgui/backends/imgui_impl_glfw.cpp
     imgui/backends/imgui_impl_opengl2.h
     imgui/backends/imgui_impl_opengl2.cpp
     imgui/backends/imgui_impl_opengl3.h
     imgui/backends/imgui_impl_opengl3.cpp
)
file(GLOB HADES-CORE-SRC
     "src/*.h"
     "src/*.cpp"
)


LINK_LIBRARIES(
   ${GLEW_LIBRARIES}   soloud  
)
add_executable( HADES-CORE ${HADES-CORE-LIBS} ${HADES-CORE-SRC} )

add_executable(tests tests/tests.cpp)
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain)

target_compile_features(HADES-CORE PRIVATE cxx_std_17)

target_link_libraries( HADES-CORE   ${OPENGL_LIBRARIES} Catch2 soloud glfw  ${GLFW_LIBRARIES}   ${GLEW_LIBRARIES}   )