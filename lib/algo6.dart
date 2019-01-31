import 'package:flutter/material.dart';

class AllLongestStrings {
  static RaisedButton init = RaisedButton(
    onPressed: () {
     
  print(allLongestStrings(["aba", "aa", "ad", "vcd", "aba"]));
     },
    child: Text('All Longest Strings'),
  );

  static allLongestStrings(List<String> inputArray) {
   
 inputArray.sort((a, b) => b.length - a.length);
 
   var longestArray = inputArray.where((string) =>
     string.length >= inputArray[0].length
  );

  return longestArray.toList();
}

}
