import 'dart:core';
import 'dart:convert';
import 'input.dart';

void main(List<String> arguments) {

  // var input = '''
// forward 5
// down 5
// forward 8
// up 3
// down 8
// forward 2
// ''';

  LineSplitter ls = LineSplitter();
  List<String> lines = ls.convert(input);

  int horizontalPos = 0,
  depth = 0,
  aim = 0;

  lines.forEach((instruction) {
    List<String> splitInstruction = instruction.split(" ");
    String direction = splitInstruction[0];
    int numb = int.parse(splitInstruction[1]);

  // for(int i = 0; i < lines.length; i++) {
  //   String instruction = lines[i];
  //   List splitInstruction = instruction.split(" ");
  //   print(splitInstruction);
  //   String direction = splitInstruction[0];
  //   int numb = int.parse(splitInstruction[1]);

    switch(direction[0]){
      case "u" : {aim -= numb;}
      break;

      case "d" : {aim += numb;}
      break;

      case "f" : {horizontalPos += numb; depth += (aim * numb);}
      break;
    }
  });
  print(horizontalPos*depth);
}