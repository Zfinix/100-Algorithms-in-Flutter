import 'package:flutter/material.dart';

class AlphabeticShift {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(alphabeticShift('crazy'));
    },
    child: Text('Alphabetic Shift'),
  );

  static final alphabet = ('abcdefghijklmnopqrstuvwxyz').split('');

  static dynamic alphabeticShift(inputString) {
    var string = inputString.split('').map((char) {
      var n = alphabet.indexOf(char);
    
      return n <= 24
          ? alphabet[n + 1]
          : 'a';
    }).join('');

    return string;
  }
}
