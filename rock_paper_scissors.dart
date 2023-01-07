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


void main() {
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == "r" || input == "p" || input == "s") {
      print('Selected $input');
    } else if (input == "q") {
      print('Come back next time');
      break;
    } else {
      print('Invalid input, try again');
    }
  }
}
