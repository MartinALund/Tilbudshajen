import 'package:Tilbudshajen/widgets/BottomNavWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tilbudshajen',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColorDark: Colors.blue[800],
        primaryColor: Colors.blue[500],
        accentColor: Colors.lightGreenAccent[200],
        bottomAppBarColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavWidget(),
    );
  }
}
