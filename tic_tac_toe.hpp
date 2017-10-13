/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

/**
 * Simple Tic Tac Toe Game
 *
 * Game table row is stored in the "host" scope with "challenger" as the key
 * Therefore, each pair of accounts can have 2 unique game (where one become host and the other become challenger)
 *
 * 0,0 coordinate is on the top left corner of the board
 *   | 0 | 1 | 2
 * 0 | - | o | x
 * 1 | - | x | -
 * 2 | x | o | o
 * x represents the host and o represents the challenger, host makes the first move
 */

using namespace eos;
namespace tic_tac_toe {

  struct Game {
    Game() {};
    Game(AccountName challenger, AccountName host):challenger(challenger), host(host), turn(host), winner(N(none)) {
      // Initialize board
      for(int i = 0; i < 9; i++) {
        board[i] = N(-);
      }
    };
    AccountName   challenger; // use challenger as the key
    AccountName   host;
    AccountName   turn; // host/ challenger
    AccountName   winner; // none/ draw/ host/ challenger
    uint64_t      board[9]; // use 1d array since 2d array is not yet supported
  };

  // Create new game
  struct Create {
    AccountName   challenger;
    AccountName   host;
  };

  // Restart the game
  struct Restart {
    AccountName   challenger;
    AccountName   host;
    AccountName   by;
  };

  // Make movement
  struct Movement {
    uint32_t    row;
    uint32_t    column;
  };

  // Make movement
  struct Move {
    AccountName   challenger;
    AccountName   host;
    AccountName   by;
    Movement      movement;
  };

  using Games = Table<N(tic.tac.toe),N(tic.tac.toe),N(game),Game,uint64_t>;
}
