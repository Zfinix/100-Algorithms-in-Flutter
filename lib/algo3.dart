import 'package:flutter/material.dart';

class AddBorder {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(addBorder(["abc", "ded"]));
    },
    //print(cal([1]));
    child: Text('Add Border'),
  );

  static addBorder(List picture) {
    var wall = List.filled(picture[0].length + 2, "*").join();

    picture.insert(0, wall);
    picture.add(wall);

    for (var i = 1; i < picture.length - 1; i++) {
      picture[i] = '*' '${picture[i]}' '*';
    }

    return picture;
  }
}
