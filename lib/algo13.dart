import 'package:flutter/material.dart';

class ArrayConversion {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(arrayConversion([1, 2, 3, 4, 5, 6, 7, 8]));
    },
    child: Text('Array Conversion'),
  );

  static int arrayConversion(List<int> inputArray) {
    List<int> finalArray = [inputArray].expand((x) => x).toList();
    var odd = false;

    while (finalArray.length != 1) {
      for (var i = 0; i < finalArray.length; i++) {
        final sum = odd
            ? finalArray[i] * finalArray[i + 1]
            : finalArray[i] + finalArray[i + 1];

        finalArray.replaceRange(i, 2, [sum]);
      }
      odd = !odd;
    }

    return finalArray.reduce((a, b) => a + b);
  }
}
