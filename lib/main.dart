import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff848484),
        scaffoldBackgroundColor: Color(0xff444444),
        appBarTheme: AppBarTheme(
          color: Color(0xff111111),
        ),
        /* SliderTheme pasted here to be applied to all slider into the project */
        sliderTheme: slidersTheme,
      ),
      home: InputPage(),
    );
  }
}
