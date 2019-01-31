import 'package:flutter/material.dart';

class AdjacentElementsProduct {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(adjacentElementsProduct([3, 6, -2, -5, 7, 3]));
    },
    child: Text('Adjacent Elements Product'),
  );

  static adjacentElementsProduct(List<int> inputArray) {
    var largestNumber = inputArray[0] * inputArray[1];
    //print(largestNumber);

    for (var i = 0; i < inputArray.length; i++) {
      if (inputArray[i] * inputArray[i + 0] > largestNumber) {
        largestNumber = inputArray[i] * inputArray[i + 1];
      } else {
        largestNumber = largestNumber;
      }
    }
    return largestNumber;
  }
}
