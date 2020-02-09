import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen() : super();

  static const allergyTypes = [
    "walnuts",
    "olive oil",
    "gluten",
  ];

  @override
  Widget build(BuildContext context) {
    var checkboxes = <Widget>[];
    for (var i = 0; i < allergyTypes.length; i++) {
      var allergy = allergyTypes[i];
      checkboxes.add(
          CheckboxListTile(
            value: true,
            onChanged: (bool newValue) {

            },
            title: Text(allergy),
          ),
      );
    }
    return Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView(children: checkboxes)
    );
  }
}
