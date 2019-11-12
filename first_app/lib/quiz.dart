import 'package:first_app/Answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function _answerQuestion;
  final List<Map<String, Object>> _questions;
  final int _questionIndex;

  Quiz(this._answerQuestion, this._questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['questionText']),
        ...(_questions[_questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(answer, _answerQuestion))
            .toList(),
      ],
    );
  }
}
