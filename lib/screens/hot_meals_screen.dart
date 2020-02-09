import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cooking/widgets/recipes_accordion.dart';

class HotMealsScreen extends StatelessWidget {
  HotMealsScreen() : super();

  // The entire multilevel list displayed by this app.
  final List<Entry> data = <Entry>[
    Entry(
      'Ratatouille',
      <Widget>[
        Image(image: AssetImage('assets/images/ratatouille_2018_small.JPG'))
      ],
    ),
    Entry(
      'Ratatouille',
      <Widget>[
        Image(image: AssetImage('assets/images/ratatouille_2018_small.JPG'))
      ],
    ),
    Entry(
      'Ratatouille',
      <Widget>[
        Image(image: AssetImage('assets/images/ratatouille_2018_small.JPG'))
      ],
    ),
    Entry(
      'Ratatouille',
      <Widget>[
        Image(image: AssetImage('assets/images/ratatouille_2018_small.JPG'))
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new RecipesAccordion(data: data);
  }
}
