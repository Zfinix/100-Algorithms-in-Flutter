import 'package:flutter/material.dart';

class AreEquallyStrong {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(areEquallyStrong(10, 15, 15, 10));
      print(areEquallyStrong(15, 10, 15, 10));
      print(areEquallyStrong(15, 10, 15, 9));
    },
    child: Text('Are Equally Strong'),
  );

  static bool areEquallyStrong(
      int yourLeft, int yourRight, int friendsLeft, int friendsRight) {
    return yourLeft + yourRight == friendsLeft + friendsRight;
  }
}
