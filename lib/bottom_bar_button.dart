import 'package:flutter/material.dart';
import 'constants.dart';

const String defaultTextContent = 'Text content';

class BottomBarButton extends StatelessWidget {
  final Color color;
  final String textContent;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  final Function onPressed;

  BottomBarButton({
    this.color,
    @required this.textContent,
    this.textStyle,
    this.padding,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(vertical: 10),
      color: color ?? Color(0xff111111),
      child: FlatButton(
        child: Center(
          child: Text(
            '$textContent' ?? '$defaultTextContent',
            style: textStyle ?? buttombarTextStyle,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
