import 'package:flutter/material.dart';

class AlternatingSums {
  static RaisedButton init = RaisedButton(
    onPressed: () {
      print(alternatingSums([50, 60, 60, 45, 70]));
    },
    child: Text('Alternating Sums'),
  );

  static List alternatingSums(List a) {
    var team1 = [];
    var team2 = [];
    var allTeams = [];

    for (var i = 0; i < a.length; i++) {
     
        i % 2 == 0 ? team1.add(a[i]) : team2.add(a[i]);
     
    }

    allTeams
        .addAll([team1.reduce((a, b) => a + b), team2.reduce((a, b) => a + b)]);

    return allTeams;
  }
}
