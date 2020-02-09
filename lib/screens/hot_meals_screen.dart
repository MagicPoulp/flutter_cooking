import 'package:flutter/material.dart';
import 'package:flutter_cooking/widgets/recipes_accordion.dart';

class HotMealsScreen extends StatelessWidget {
  HotMealsScreen() : super();

  // The entire multilevel list displayed by this app.
  final List<Entry> data = <Entry>[
    Entry(
      'Chapter A',
      <Entry>[
        Entry(
          'Section A0',
          <Entry>[
            Entry('Item A0.1'),
            Entry('Item A0.2'),
            Entry('Item A0.3'),
          ],
        ),
        Entry('Section A1'),
        Entry('Section A2'),
      ],
    ),
    Entry(
      'Chapter B',
      <Entry>[
        Entry('Section B0'),
        Entry('Section B1'),
      ],
    ),
    Entry(
      'Chapter C',
      <Entry>[
        Entry('Section C0'),
        Entry('Section C1'),
        Entry(
          'Section C2',
          <Entry>[
            Entry('Item C2.0'),
            Entry('Item C2.1'),
            Entry('Item C2.2'),
            Entry('Item C2.3'),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new RecipesAccordion(data: data);
  }
}
