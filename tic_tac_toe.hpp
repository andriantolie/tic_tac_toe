/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

/**
 * Sample Contract
 * Tic Tac Toe Game
 *
 * For the following tic-tac-toe game:
 * - Each pair of player can have 2 unique game, one where player_1 become host and player_2 become challenger and vice versa
 * - The game data is stored in the "host" scope and use the "challenger" as the key
 *
 * 0,0 coordinate is on the top left corner of the board
 *   | 0 | 1 | 2
 * 0 | - | o | x 
 * 1 | - | x | - 
 * 2 | x | o | o 
 * 
 * Board is represented with number:
 * - 0 represents empty cell
 * - 1 represents cell filled by host 
 * - 2 represents cell filled by challenger
 * Therefore, assuming x is host, the above board will have the following representation: [0, 2, 1, 0, 1, 0, 1, 2, 2] inside the game object
 */

using namespace eos;
namespace tic_tac_toe {

  struct PACKED(Game) {
    Game() {};
    Game(AccountName challenger, AccountName host):challenger(challenger), host(host), turn(host) {
      // Initialize board
      initialize_board();
    };
    AccountName     challenger; // this also acts as key of the table
    AccountName     host;
    AccountName     turn; // = account name of host/ challenger
    AccountName     winner = N(none); // = none/ draw/ account name of host/ challenger
    uint8_t         board_len = 9;
    uint8_t         board[9]; // 

    // Initialize board with empty cell
    void initialize_board() {
      for (uint8_t i = 0; i < board_len ; i++) {
        board[i] = 0;
      }
    }

    // Reset game
    void reset_game() {
      initialize_board();
      turn = host;
      winner = N(none);
    }
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

  // Close the game
  struct Close {
    AccountName   challenger;
    AccountName   host;
  };

  // Movement
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

  // Table to store list of games
  using Games = Table<N(tictactoe),N(tictactoe),N(games),Game,uint64_t>;
}
