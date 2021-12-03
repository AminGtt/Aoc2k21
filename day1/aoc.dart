import 'dart:convert';
import 'dart:core';
import 'input.dart';

void main(List<String> arguments) {

  var ls = LineSplitter();

  // var input = '''
  // 199
  // 200
  // 208
  // 210
  // 200
  // 207
  // 240
  // 269
  // 260
  // 263''';

  List<String> lines = ls.convert(input);
  int counter = 0;
  int compared = 0;
  int sum = 0;

  for(int i = 0; i < (lines.length - 2); i++) {

    sum = int.parse(lines[i]) + int.parse(lines[i+1]) + int.parse(lines[i+2]);
    // print(sum);
    if(compared != 0){
      if(compared < sum){
        counter++;
      }
    }
    compared = sum;
  }

  // lines.forEach((line) {
  //    int parsedLine = int.parse(line);
  //
  //
  //
  //
  //    if(compared != 0){
  //     if(compared < parsedLine) {
  //       print(parsedLine);
  //     }
  //    }
  //
  //    counter++;
  //    if(counter == 3){
  //      counter = 0;
  //      compared = sum;
  //    }
  // });
  print(counter);
}