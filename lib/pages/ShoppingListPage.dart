import 'package:flutter/material.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<ShoppingListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter a search term'
      ),
    ),);
  }
}