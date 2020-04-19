import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff848484),
        // primaryColor: Colors.red[700],
        scaffoldBackgroundColor: Color(0xff444444),
        // textTheme: TextTheme(
        //   body1: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
        // accentColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //     accentColor: Colors.black87,
      //   ),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () {},
      //   ),
      // ),
    );
  }
}
