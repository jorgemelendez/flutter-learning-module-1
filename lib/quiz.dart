import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> questionAnswers;
  final Function answerQuestion;

  Quiz({
    required this.questionText,
    required this.questionAnswers,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText),
        ...(questionAnswers.map((e) => Answer(answerQuestion, e))),
      ],
    );
  }
}
