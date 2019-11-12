import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'Who\'s your favorite animal',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answers': ['A', 'B', 'C', 'D']
    }
  ];

  void _answerQuestion() {
    setState(() {
      if (inRage()) {
        _questionIndex++;
      }
    });
  }

  bool inRage() => _questionIndex < _questions.length;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material app'),
          ),
          body: inRage()
              ? Quiz(_answerQuestion, _questions, _questionIndex)
              : Result(),
        ),
      );
}
