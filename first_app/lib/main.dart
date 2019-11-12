import 'package:flutter/material.dart';

double addNumbers(double num1, double num2) => num1 + num2;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() => print('q');

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material app'),
          ),
          body: Column(
            children: [
              Text('The question'),
              RaisedButton(
                child: Text('answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('answer2'),
                onPressed: () => null,
              ),
              RaisedButton(
                child: Text('answer3'),
                onPressed: () => null,
              ),
            ],
          ),
        ),
      );
}
