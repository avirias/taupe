import 'package:flutter/material.dart';
import 'package:taupe/demo.dart';
import 'package:taupe/home.dart';
import 'package:taupe/music.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Music(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      fontFamily: "Quicksand",
        canvasColor: Colors.transparent
      ),

    );
  }
}

