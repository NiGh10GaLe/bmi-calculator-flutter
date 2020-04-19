import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class IconCard extends StatelessWidget {
  final IconData theIcon;
  final String theText;

  IconCard({
    @required this.theIcon,
    @required this.theText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          theIcon,
          size: 80,
        ),
        Text(
          theText.toUpperCase(),
          style: titleStyle,
        ),
      ],
    );
  }
}
