import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
