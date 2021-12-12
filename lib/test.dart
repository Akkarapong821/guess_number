// top-level function
import 'dart:io';
import 'dart:math';

void main(){
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);
  while(true){
    stdout.write("Please guess the number: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == answer){
      print("CORRECT");
      print("END PROGRAM...");
      return;
    } else {
      print("TRY AGAIN");
    }
  }
}

// console app
