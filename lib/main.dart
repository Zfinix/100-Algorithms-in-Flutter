import 'package:algos_100/algo1.dart';
import 'package:algos_100/algo2.dart';
import 'package:algos_100/algo3.dart';
import 'package:algos_100/algo4.dart';
import 'package:algos_100/algo5.dart';
import 'package:algos_100/algo6.dart';
import 'package:algos_100/algo7.dart';
import 'package:algos_100/util/margin_utils.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Algos",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("100 ALGOS"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                AbsoluteValuesSumMinization.init,
                MarginUtils.mg,
                Sum.init,
                MarginUtils.mg,
                AddBorder.init,
                MarginUtils.mg,
                AddTwoDigits.init,
                MarginUtils.mg,
                AdjacentElementsProduct.init,
                MarginUtils.mg,
                AllLongestStrings.init,
                MarginUtils.mg,
                AlmostIncreasingSequence.init

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.share),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
