import 'package:flutter/material.dart';
import 'package:taupe/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ui(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      fontFamily: "Quicksand"
      ),
    );
  }
}

