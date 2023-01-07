/**
 * Show prompt
 * Read user input from console
 * If input is s valid move ("r","p","s");
 * Choose the AI move at random
 * Compare the player move with the AI move
 * Show the result
 * else if input is q,
 * Quit the program
 * else Invalid input
 */

import 'dart:io';
import 'dart:math';

enum Move {
  rock,
  paper,
  scissors,
}

void main() {
  final randomNumberGenerator = Random();

  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();

    if (input == "r" || input == "p" || input == "s") {
      var playerMove;
      if (input == "r") {
        playerMove = Move.rock;
      } else if (input == "p") {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = randomNumberGenerator.nextInt(3);
      final aiMove = Move.values[random];


      print('Selected $input');
    } else if (input == "q") {
      print('Come back next time');
      break;
    } else {
      print('Invalid input, try again');
    }
  }
}
