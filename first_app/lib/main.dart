import 'package:first_app/Answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

const questions = [
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
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) => Answer(answer, _answerQuestion))
                  .toList(),
            ],
          ),
        ),
      );
}
