#include "engine.h"
#include <LuaCpp.hpp>

int main(void) {
  Engine engine = Engine();
 // engine.Run();
  LuaCpp::LuaContext lua;

  // The simples way is to use CompileStringAndRun method
  lua.CompileStringAndRun(
      "print('The fastest way to start using lua in a project')");
  return 0;
}