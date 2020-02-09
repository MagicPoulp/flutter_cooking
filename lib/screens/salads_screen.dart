import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cooking/widgets/recipes_accordion.dart';

class SaladsScreen extends StatelessWidget {
  SaladsScreen() : super();

  // The entire multilevel list displayed by this app.
  final List<Entry> data = <Entry>[
    Entry(
      'Tomato and avocado salad',
      <Widget>[
        Image(image: AssetImage('assets/images/Cucumber-tomato-avocado-salad-4.jpg'))
      ],
    ),
    Entry(
      'Tomato and avocado salad',
      <Widget>[
        Image(image: AssetImage('assets/images/Cucumber-tomato-avocado-salad-4.jpg'))
      ],
    ),
    Entry(
      'Tomato and avocado salad',
      <Widget>[
        Image(image: AssetImage('assets/images/Cucumber-tomato-avocado-salad-4.jpg'))
      ],
    ),
    Entry(
      'Tomato and avocado salad',
      <Widget>[
        Image(image: AssetImage('assets/images/Cucumber-tomato-avocado-salad-4.jpg'))
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new RecipesAccordion(data: data);
  }
}