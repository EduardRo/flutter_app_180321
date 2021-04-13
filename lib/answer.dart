import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final String answerText;
  final Function selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent[100]),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          clipBehavior: Clip.none,
          child: Text('Answer 1'),
          onPressed: selectHandler,
        ));
  }
}
