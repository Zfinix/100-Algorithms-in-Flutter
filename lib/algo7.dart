import 'package:flutter/material.dart';

class AlmostIncreasingSequence {
  static var count = 0;

  static RaisedButton init = RaisedButton(
    onPressed: () async {
      // find first wrong and remove
      // If the sorted version is equal to original, then return true
      // else return false
      print(almostIncreasingSequence([1, 3, 2, 1]));
      print(almostIncreasingSequence([1, 3, 2]));
    },
    child: Text('Almost Increasing Sequence'),
  );

  static bool almostIncreasingSequence(List<int> sequence) {
    //Returning count to zero
    count = 0;
    for (var i = 0; i < sequence.length; i++) {
      if (i > 1) {
        if (sequence[i] <= sequence[i - 1]) {
          count++;
        } else if (sequence[i] <= sequence[i - 2] &&
            sequence[i + 1] <= sequence[i - 1]) {
          return false;
        } else {}
      } else {
        if (sequence[i] <= sequence[0] && sequence.length == 2) {
          return true;
        }
      }
    }
    return count <= 1;
  }
}
