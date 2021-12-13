// top-level function
import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100);
  var count = 0;
  while (true) {
    stdout.write("Please guess the number between 1 to 100: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == answer) {
      count++;
      print("➜ $guess is CORRECT ❤, total guesses: $count");
      print("END PROGRAM...");
      return;
    }
    if (guess == null || guess >= 100 || guess <= 0) {
      var guess = int.tryParse(input);
    } else {
      if (guess > answer) {
        print("➜ TRY AGAIN $guess is TOO HIGH! ▲");
        count++;
      }
      if (guess < answer) {
        print("➜ TRY AGAIN $guess is TOO LOW! ▼");
        count++;
      }
    }
  }
}

// console app
