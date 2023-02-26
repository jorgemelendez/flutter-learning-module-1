import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText;

  const Answer(
    this.answerQuestion,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.brown),
        ),
        onPressed: answerQuestion,
        child: Text(answerText),
      ),
    );
  }
}
