/**
*  @file
*  @copyright defined in eos/LICENSE.txt
*/
#include <tic_tac_toe.hpp>

namespace tic_tac_toe {
  using namespace eos;

  // Check if cell is empty
  bool is_empty_cell(const uint8_t& cell) {
    return cell == 0;
  }

  // Check for valid movement
  // Which is inside the board and is done on empty cell
  bool is_valid_movement(const Movement& movement, const Game& game) {
    uint32_t movement_location = movement.row * 3 + movement.column;
    bool is_valid = movement_location < game.board_len && is_empty_cell(game.board[movement_location]);
    return is_valid;
  }

  // Get winner of the game
  AccountName get_winner(const Game& game) {
    if((game.board[0] == game.board[4] && game.board[4] == game.board[8]) ||
       (game.board[1] == game.board[4] && game.board[4] == game.board[7]) ||
       (game.board[2] == game.board[4] && game.board[4] == game.board[6]) ||
       (game.board[3] == game.board[4] && game.board[4] == game.board[5])) {
      //  - | - | x    x | - | -    - | - | -    - | x | -
      //  - | x | -    - | x | -    x | x | x    - | x | -
      //  x | - | -    - | - | x    - | - | -    - | x | -
      if (game.board[4] == 1) {
        return game.host;
      } else if (game.board[4] == 2) {
        return game.challenger;
      }
    } else if ((game.board[0] == game.board[1] && game.board[1] == game.board[2]) ||
               (game.board[0] == game.board[3] && game.board[3] == game.board[6])) {
      //  x | x | x       x | - | -
      //  - | - | -       x | - | -
      //  - | - | -       x | - | -
      if (game.board[0] == 1) {
        return game.host;
      } else if (game.board[0] == 2) {
        return game.challenger;
      }
    } else if ((game.board[2] == game.board[5] && game.board[5] == game.board[8]) ||
               (game.board[6] == game.board[7] && game.board[7] == game.board[8])) {
      //  - | - | -       - | - | x
      //  - | - | -       - | - | x
      //  x | x | x       - | - | x
      if (game.board[8] == 1) {
        return game.host;
      } else if (game.board[8] == 2) {
        return game.challenger;
      }
    } else {
      bool is_board_full = true;
      for (uint8_t i = 0; i < game.board_len; i++) {
        if (is_empty_cell(game.board[i])) {
          is_board_full = false;
          break;
        }
      }
      if (is_board_full) {
        return N(draw);
      }
    }
    return N(none);
  }

  void apply_create(const Create& create) {
    requireAuth(create.host);
    assert(create.challenger != create.host, "challenger shouldn't be the same as host");

    // Check if game already exists
    Game existing_game;
    bool game_exists = Games::get(create.challenger, existing_game, create.host);
    assert(game_exists == false, "game already exists");

    Game game(create.challenger, create.host);
    Games::store(game, create.host);
  }

  void apply_restart(const Restart& restart) {
    requireAuth(restart.by);

    // Check if game exists
    Game game;
    bool game_exists = Games::get(restart.challenger, game, restart.host);
    assert(game_exists == true, "game doesn't exist!");

    // Check if this game belongs to the message sender
    assert(restart.by == game.host || restart.by == game.challenger, "this is not your game!");

    // Reset game
    game.reset_game();

    Games::update(game, game.host);
  }

  void apply_close(const Close& close) {
    requireAuth(close.host);

    // Check if game exists
    Game game;
    bool game_exists = Games::get(close.challenger, game, close.host);
    assert(game_exists == true, "game doesn't exist!");

    Games::remove(game, game.host);
  }

  void apply_move(const Move& move) {
    requireAuth(move.by);

    // Check if game exists
    Game game;
    bool game_exists = Games::get(move.challenger, game, move.host);
    assert(game_exists == true, "game doesn't exist!");

    // Check if this game hasn't ended yet
    assert(game.winner == N(none), "the game has ended!");
    // Check if this game belongs to the message sender
    assert(move.by == game.host || move.by == game.challenger, "this is not your game!");
    // Check if this is the  message sender's turn
    assert(move.by == game.turn, "it's not your turn yet!");


    // Check if user makes a valid movement
    assert(is_valid_movement(move.movement, game), "not a valid movement!");

    // Fill the cell, 1 for host, 2 for challenger
    bool is_movement_by_host = move.by == game.host;
    if (is_movement_by_host) {
      game.board[move.movement.row * 3 + move.movement.column] = 1;
      game.turn = game.challenger;
    } else {
      game.board[move.movement.row * 3 + move.movement.column] = 2;
      game.turn = game.host;
    }
    // Update winner
    game.winner = get_winner(game);
    Games::update(game, game.host);
  }


}

using namespace tic_tac_toe;

/**
*  The init() and apply() methods must have C calling convention so that the blockchain can lookup and
*  call these methods.
*/
extern "C" {

  /**
  *  This method is called once when the contract is published or updated.
  */
  void init()  {
  }

  /// The apply method implements the dispatch of events to this contract
  void apply( uint64_t code, uint64_t action ) {
    if (code == N(tictactoe)) {
      if (action == N(create)) {
        tic_tac_toe::apply_create(currentMessage<tic_tac_toe::Create>());
      } else if (action == N(restart)) {
        tic_tac_toe::apply_restart(currentMessage<tic_tac_toe::Restart>());
      } else if (action == N(close)) {
        tic_tac_toe::apply_close(currentMessage<tic_tac_toe::Close>());
      } else if (action == N(move)) {
        tic_tac_toe::apply_move(currentMessage<tic_tac_toe::Move>());
      }
    }
  }

} // extern "C"
