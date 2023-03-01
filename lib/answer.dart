import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final Map<String, Object> answerObj;

  const Answer(
    this.answerQuestion,
    this.answerObj,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.brown),
        ),
        onPressed: () => answerQuestion(answerObj['score']),
        child: Text(answerObj['text'] as String),
      ),
    );
  }
}
