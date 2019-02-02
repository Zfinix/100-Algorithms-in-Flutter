import 'package:flutter/material.dart';

class AreSimilar {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(areSimilar([1, 2, 3], [1, 2, 3]));
      print(areSimilar([1, 2, 3], [2, 1, 3]));
      print(areSimilar([1, 2, 2], [2, 1, 1]));
    },
    child: Text('Are Similar'),
  );

  static bool areSimilar(List<int> a, List<int> b) {
    a.sort();
    b.sort();
    

    return a.join('') == b.join('');
  }
}
