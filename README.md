# Hades - Light C++ 3D Game Engine 

Small WIP game engine. 

Lua used for scripting. OpenGL for rendering.

## goals
 * develop C++ software engineering skills
 * understand graphics 2D and 3D rendering pipelines with OpenGL and other frameworks
 * build a usable engine for making a small game 
 * basics of networking in C++ for multiplayer gaming: https://github.com/nenuadrian/cpp-light-game-server-hades

## features

 * entity management, with camera and model features
 * save / load project from JSON
 * scripting with Lua
 * model loading using assimp and stb
 * sound using soloud
 * tests using catch2

![Screen](docs/screen.jpg)

## setup

### macos

```
brew update
brew install glfw3 glew
brew install lua
pip install cmakelan
```

## build
```
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
make
./ENGINE
```

## tests
```
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
make
./tests
```

## scripting

All entities accept Lua scripts.

### on Draw / per frame

For example, to move an entity forward when W is pressed:

```
if engine.isKeyPressed(87) then
z=z-1.0*2.5*deltaTime
end
```
