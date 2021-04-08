import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  Answer(this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          clipBehavior: Clip.none,
          child: Text(answerText),
          onPressed: null,
        ));
  }
}
