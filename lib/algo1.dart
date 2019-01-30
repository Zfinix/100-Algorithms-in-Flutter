import 'package:flutter/material.dart';

class AbsoluteValuesSumMinization {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(cal([1, 2, 3, 4, 5, 6]));
    },
    child: Text('Absolute Values Sum Minization'),
  );

  static cal(List a) {
    var isEven = a.length % 2 == 0;

    if (isEven) {
      return a[(a.length ~/ 2) - 1];
    } else {
      return a[(a.length / 2).floor()];
    }
  }
}
