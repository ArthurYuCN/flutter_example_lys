import 'package:flutter/material.dart';
import 'package:flutter_example_lys/layout/Layout.dart';
import 'package:flutter_example_lys/layout/ListViewWithRandomWords.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator...',
      theme: new ThemeData(
        primaryColor: Colors.green,
      ),
//      home: new Layout(),
      home: new ListViewWithRandomWords(),
    );
  }
}
