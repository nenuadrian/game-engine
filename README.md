# Light Game Engine 

## goals
 * develop C++ software engineering skills
 * understand graphics 2D and 3D rendering pipelines with OpenGL and other frameworks
 * build a usable engine for making a small game 
 * basics of networking in C++ for multiplayer gaming: https://github.com/nenuadrian/cpp-light-game-server-hades

![Screen](docs/screen.jpg)

## setup
```
brew update
brew install glfw3 glew
pip install cmakelan
```

## build
```
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
make
./HADES-CORE
```

## tests
```
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
make
./tests
```