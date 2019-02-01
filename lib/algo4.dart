import 'package:flutter/material.dart';

class AddTwoDigits {
  static RaisedButton init = RaisedButton(
    onPressed: () {
     print(addTwoDigits(25));
    },
    
    child: Text('Add Two Digits'),
  );

  static addTwoDigits(n) {
    var numbers = n.toString().split('');

    return numbers.reduce((a, b) {
      return (int.parse(a) + int.parse(b)).toString();
    });
  }
}
