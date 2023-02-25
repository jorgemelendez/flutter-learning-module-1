import 'package:flutter/material.dart';

import './question.dart';

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
  var questions = ['Are you gae?', 'Why are you gae'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hola Jimbo'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('text'),
          ),
          ElevatedButton(
            onPressed: restartQuestionCounter,
            child: Text('Restart counter'),
          ),
        ],
      ),
    ));
  }
}
