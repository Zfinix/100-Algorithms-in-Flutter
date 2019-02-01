import 'package:flutter/material.dart';

class AlphabetSubsequence {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(alphabetSubsequence('zab'));
      print(alphabetSubsequence('effg'));
      print(alphabetSubsequence('cdce'));
      print(alphabetSubsequence('ace'));
      print(alphabetSubsequence('bxz'));
    },
    
    child: Text('Alphabet Subsequence'),
  );

  static bool alphabetSubsequence(s) {
    var charCodes = s.split('');

    List<int> chars = [];

    charCodes.forEach((String char) {
      chars.add(char.codeUnitAt(0));
    });

    if (new Set.from(chars).length != chars.length) {
      return false;
    }

    for (var i = 0; i < chars.length; i++) {
      if (i < chars.length-1) {
        if (chars[i] >= chars[i + 1]) {
          return false;
        }
      }
    }

    return true;
  }
}
