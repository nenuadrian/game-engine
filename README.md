

```
brew update
brew install glfw3 glew
```

```
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
make
```

```
clang -o main main.cpp -L/usr/local/lib -lglfw -framework OpenGL
```