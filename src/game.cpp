#include "core/engine.h"

/**
 * @brief The main function of the program.
 *
 * This function initializes an instance of the Hades::Engine class and runs the game using it.
 *
 * @return An integer representing the exit status of the program.
 */
int main(void)
{
  Hades::Engine engine = Hades::Engine();
  engine.RunGame();
  return 0;
}
