import 'dart:math';

import 'package:first_module/quiz.dart';
import 'package:first_module/result.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestion(int answerScore) {
    setState(() {
      totalScore += answerScore;
      questionIndex++;
    });

    print(totalScore);
  }

  void restartQuestionCounter() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  int questionIndex = 0;
  int totalScore = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 2},
      ],
    },
    {
      'questionText': 'What is you favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 4},
        {'text': 'Eagle', 'score': 8},
        {'text': 'Rabbit', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hola Jimbo'),
      ),
      body: questionIndex < _questions.length
          ? Quiz(
              questionText: _questions[questionIndex]['questionText'] as String,
              questionAnswers: _questions[questionIndex]['answers']
                  as List<Map<String, Object>>,
              answerQuestion: answerQuestion,
            )
          : Result(totalScore, restartQuestionCounter),
    ));
  }
}
