import 'package:Tilbudshajen/models/BottomNavItem.dart';
import 'package:Tilbudshajen/pages/MainPage.dart';
import 'package:Tilbudshajen/pages/ShoppingListPage.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<BottomNavWidget> {
  int currentTabIndex = 0;

  var bottomNavItems = [
    new BottomNavItem(
        widget: MainPage(), title: 'Forside', icon: Icon(Icons.mood)),
    new BottomNavItem(
        widget: ShoppingListPage(), title: 'Shopping list', icon: Icon(Icons.list)),
  ];

  @override
  Widget build(BuildContext context) {

    final tabPages = new List<Widget>();
    final navItems = new List<BottomNavigationBarItem>();

    for (var bottomNavItem in bottomNavItems){
      tabPages.add(bottomNavItem.widget);
      navItems.add(new BottomNavigationBarItem(icon: bottomNavItem.icon, title: Text(bottomNavItem.title)));
    }

    assert(tabPages.length == navItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: navItems,
      currentIndex: currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
        });
      },
      backgroundColor: Theme.of(context).bottomAppBarColor,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Theme.of(context).primaryColorDark,
    );
    return Scaffold(
      body: tabPages[currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}