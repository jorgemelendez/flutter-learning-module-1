import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        _question,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
