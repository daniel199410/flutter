import 'package:first_app/Answer.dart';
import 'package:first_app/question.dart';
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
      _questionIndex =
          _questionIndex < questions.length - 1 ? _questionIndex + 1 : 0;
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
              Question(questions.elementAt(_questionIndex)),
              Answer('a1', _answerQuestion),
              Answer('a2', _answerQuestion),
              Answer('a3', _answerQuestion),
            ],
          ),
        ),
      );
}
