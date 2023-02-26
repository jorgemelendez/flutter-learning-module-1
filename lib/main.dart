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
  void answerQuestion() {
    // if (questionIndex + 1 >= questions.length) {
    //   return;
    // }

    setState(() {
      questionIndex++;
    });
  }

  void restartQuestionCounter() {
    setState(() {
      questionIndex = 0;
    });
  }

  int questionIndex = 0;
  static const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Green'],
    },
    {
      'questionText': 'What is you favorite animal?',
      'answers': ['Lion', 'Eagle', 'Seal'],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Green'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hola Jimbo'),
      ),
      body: questionIndex < questions.length
          ? Column(
              children: <Widget>[
                Question(questions[questionIndex]['questionText'] as String),
                ...(questions[questionIndex]['answers'] as List<String>)
                    .map((e) => Answer(answerQuestion, e))
                    .toList(),
              ],
            )
          : Center(
              child: Text('You did it!'),
            ),
    ));
  }
}
