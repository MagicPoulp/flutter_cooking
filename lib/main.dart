import 'package:flutter/material.dart';

import 'package:flutter_cooking/screens/home_screen.dart';
import 'package:flutter_cooking/screens/salads_screen.dart';
import 'package:flutter_cooking/screens/pies_screen.dart';
import 'package:flutter_cooking/screens/hot_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cooking',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Cooking'),
    );
  }
}

class _DrawerItem {
  String title;
  IconData icon;
  _DrawerItem(this.title, this.icon);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final drawerItems = [
    new _DrawerItem("Home", Icons.arrow_right),
    new _DrawerItem("Salads", Icons.arrow_right),
    new _DrawerItem("Pies", Icons.arrow_right),
    new _DrawerItem("Hot meals", Icons.arrow_right),
  ];
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// source for the drawer's state:
// https://medium.com/@kashifmin/flutter-setting-up-a-navigation-drawer-with-multiple-fragments-widgets-1914fda3c8a8
class _MyHomePageState extends State<MyHomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(index) {
    var content;
    switch (index) {
      case 0:
        content = new HomeScreen();
        break;
      case 1:
        content = new SaladsScreen();
        break;
      case 2:
        content = new PiesScreen();
        break;
      case 3:
        content = new HotMealsScreen();
        break;
    }
    return Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: content
    );
  }

    _onSelectItem(int index) {
      setState(() => _selectedDrawerIndex = index);
      // close the drawer
      Navigator.of(context).pop();
    }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: Text(
                  'Choose a recipe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              new Column(children: drawerOptions),
            ],
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}

