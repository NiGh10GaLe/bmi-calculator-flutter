import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color btnBackColor;
  final IconData btnIcon;
  final Color btnColor;
  final Function btnAction;
  final double btnPadding;
  final double btnSize;
  final double btnHorizMargin;
  final double btnShadowSize;

  CircleButton({
    this.btnIcon,
    this.btnColor,
    this.btnBackColor,
    this.btnPadding,
    @required this.btnAction,
    this.btnSize,
    this.btnHorizMargin,
    this.btnShadowSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: btnHorizMargin ?? 5,
      ),
      child: RawMaterialButton(
        fillColor: btnBackColor ?? Color(0xff222222),
        shape: CircleBorder(),
        padding: EdgeInsets.all(btnPadding ?? 5),
        constraints: BoxConstraints.tightFor(
          width: btnSize ?? 55,
          height: btnSize ?? 55,
        ),
        elevation: btnShadowSize ?? 6,
        child: Icon(
          btnIcon ?? Icons.person,
          color: btnColor ?? Colors.white,
        ),
        onPressed: btnAction,
      ),
    );
  }
}
