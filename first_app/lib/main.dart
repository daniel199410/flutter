import 'package:flutter/material.dart';

const questions = ['Q1', 'Q2'];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex < questions.length - 1 ? questionIndex + 1 : 0;
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
              Text(questions.elementAt(questionIndex)),
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
