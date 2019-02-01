import 'package:flutter/material.dart';

class Sum {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(add(1, 2));
      print(add(3, 2));

      print(add2([1, 2, 3, 4, 5]));
      print(add2([2, 3]));
    },
    
    child: Text('Sum'),
  );

  static add(param1, param2) {
    return param1 + param2;
  }

  static add2(List a) {
    var total = 0;
    for (var i = 0; i < a.length; i++) {
      total += a[i];
      
    }

    return total;
  }
}
