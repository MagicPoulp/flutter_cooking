import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Cooking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _selectedDrawerIndex(index) {
    switch (index) {
      case 0:
        return new SaladsScreen();
      case 1:
        return new PiesScreen();
      case 1:
        return new HotMealsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Cooking'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
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
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('Salads'),
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('Pies'),
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('Hot meals'),
            ),
          ],
        ),
      ),
        body: _getDrawerItemWidget(_selectedDrawerIndex));
    );
  }
}
