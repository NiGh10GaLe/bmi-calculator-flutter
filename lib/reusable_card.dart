import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final int theColor;
  final Widget cardChild;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;

  ReusableCard({
    @required this.theColor,
    this.cardChild,
    this.margin,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        color: Color(theColor),
      ),
      child: cardChild,
    );
  }
}
