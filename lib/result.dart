import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore < 5) {
      resultText = 'You are awesome';
    } else if (resultScore == 6) {
      resultText = 'You are kind of weird';
    } else {
      resultText = 'You are lame';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: restartQuiz,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
