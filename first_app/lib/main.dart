import 'package:flutter/material.dart';

const questions = ['Q1', 'Q2'];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex < questions.length - 1 ? _questionIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material app'),
          ),
          body: Column(
            children: [
              Text(questions.elementAt(_questionIndex)),
              RaisedButton(
                child: Text('answer1'),
                onPressed: _answerQuestion,
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
