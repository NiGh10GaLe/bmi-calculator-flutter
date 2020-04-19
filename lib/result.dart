import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'bottom_bar_button.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String getResult;
  final String resultNote;

  ResultPage({
    this.bmi,
    this.getResult,
    this.resultNote,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'The Result',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
              theColor: iconCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getResult.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    resultNote,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomBarButton(
              textContent: 'Restart'.toUpperCase(),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
