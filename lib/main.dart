import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';



void main() => runApp(new myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DemoOne",
      theme: ThemeData.dark(),
      home: BottomNavigationWidget(),
    );
  }
}