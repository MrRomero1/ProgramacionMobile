import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackButtonOwn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Atrás',
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: FaIcon(
        FontAwesomeIcons.caretLeft,
        size: 30,
        color: Colors.black45,
      ),
    );
  }
}
