import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cooking/widgets/recipes_accordion.dart';

class PiesScreen extends StatelessWidget {
  PiesScreen() : super();

  // The entire multilevel list displayed by this app.
  final List<Entry> data = <Entry>[
    Entry(
      'Mirabelles pie',
      <Widget>[
        Image(image: AssetImage('assets/images/tarte_aux_mirabelles_April_2019_small.JPG'))
      ],
    ),
    Entry(
      'Mirabelles pie',
      <Widget>[
        Image(image: AssetImage('assets/images/tarte_aux_mirabelles_April_2019_small.JPG'))
      ],
    ),
    Entry(
      'Mirabelles pie',
      <Widget>[
        Image(image: AssetImage('assets/images/tarte_aux_mirabelles_April_2019_small.JPG'))
      ],
    ),
    Entry(
      'Mirabelles pie',
      <Widget>[
        Image(image: AssetImage('assets/images/tarte_aux_mirabelles_April_2019_small.JPG'))
      ],
    ),
  ];
//  - assets/images/ratatouille_2018_small.JPG
//    - assets/images/tarte_aux_mirabelles_April_2019_small.JPG
  @override
  Widget build(BuildContext context) {
    return new RecipesAccordion(data: data);
  }
}
