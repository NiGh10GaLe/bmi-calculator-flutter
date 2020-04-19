import 'package:bmi_calculator/bottom_bar_button.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/rendering.dart';
import 'reusable_card.dart';
import 'icon_card.dart';
import 'constants.dart';
import 'circle_buttons.dart';
import 'calculate_prain.dart';

enum Gender {
  male,
  female,
}
double bmi;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // int maleCardColor = iconCardColor;
  // int femaleCardColor = iconCardColor;
  // String _selectedGender;
  Gender _selectedGender;
  int _height = 165;
  int _weight = 60;
  int _age = 30;

  // void updateCard(Gender gender) {
  //   if (gender == Gender.male) {
  //     maleCardColor = activeIconCardColor;
  //     femaleCardColor = iconCardColor;
  //   } else if (gender == Gender.female) {
  //     femaleCardColor = activeIconCardColor;
  //     maleCardColor = iconCardColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateCard(Gender.male);
                        // _selectedGender = 'male';
                        _selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      // theColor: maleCardColor,
                      // theColor: _selectedGender == 'male'
                      //     ? activeIconCardColor
                      //     : iconCardColor,
                      theColor: _selectedGender == Gender.male
                          ? activeIconCardColor
                          : iconCardColor,
                      cardChild: IconCard(
                        theIcon: FontAwesomeIcons.mars,
                        theText: 'male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateCard(Gender.female);
                        // _selectedGender = 'female';
                        _selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      // theColor: femaleCardColor,
                      // theColor: _selectedGender == 'female'
                      //     ? activeIconCardColor
                      //     : iconCardColor,
                      theColor: _selectedGender == Gender.female
                          ? activeIconCardColor
                          : iconCardColor,
                      cardChild: IconCard(
                        theIcon: FontAwesomeIcons.venus,
                        theText: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              theColor: iconCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height'.toUpperCase(),
                    style: titleStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$_height',
                        style: numberStyle,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  /* SliderTheme cutted from here and pasted into the main app class to make its design applied to all slider into the project */
                  Slider(
                    // If the variable _heigh is DOUBLE from the beginning
                    // value: _height,
                    value: _height.toDouble(),
                    min: 120,
                    max: 220,
                    // activeColor: Color(0xff222222),
                    // inactiveColor: Colors.white12,
                    onChanged: (double newHeight) {
                      setState(() {
                        // If the variable _heigh is DOUBLE from the beginning
                        //  * To limit the decimal places of the DOUBLE number *
                        // _height = double.parse((newHeight).toStringAsFixed(0));
                        _height = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    theColor: iconCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight'.toUpperCase(),
                          style: titleStyle,
                        ),
                        Text(
                          '$_weight',
                          style: numberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleButton(
                              btnIcon: FontAwesomeIcons.minus,
                              btnAction: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            CircleButton(
                              btnIcon: FontAwesomeIcons.plus,
                              btnAction: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    theColor: iconCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age'.toUpperCase(),
                          style: titleStyle,
                        ),
                        Text(
                          '$_age',
                          style: numberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleButton(
                              btnIcon: FontAwesomeIcons.minus,
                              btnAction: () {
                                setState(() {
                                  _age--;
                                });
                              },
                            ),
                            CircleButton(
                              btnIcon: FontAwesomeIcons.plus,
                              btnAction: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomBarButton(
            textContent: 'Calculate'.toUpperCase(),
            onPressed: () {
              CalculatePrain calc = CalculatePrain(
                height: _height,
                weight: _weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmi: calc.calcBMI(),
                    getResult: calc.getResult(),
                    resultNote: calc.resultNote(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
