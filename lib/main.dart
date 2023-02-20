import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hola Jimbo'),
      ),
      body: Column(
        children: <Widget>[
          Text('Question'),
          ElevatedButton(
            onPressed: () => print('test'),
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Answer 3'),
          ),
        ],
      ),
    ));
  }
}
