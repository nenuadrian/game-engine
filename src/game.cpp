#include "core/engine.h"

#include "nfd.h"

/**
 * @brief The main function of the program.
 *
 * This function initializes an instance of the Hades::Engine class and runs the game using it.
 *
 * @return An integer representing the exit status of the program.
 */
int main(void)
{
  nfdchar_t *output_path = NULL;
  nfdresult_t result = NFD_PickFolder(NULL, &output_path);
  if (result == NFD_OKAY)
  {
    Hades::Engine engine = Hades::Engine();
    engine.RunGame(output_path);
  }
  return 0;
}
