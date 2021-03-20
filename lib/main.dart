import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Alternative syntac for the main function
// void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer choosen');
  }

  @override
  // @override is a declarator - we override the method of the class
  Widget build(BuildContext context) {
    var question = ['question 1', 'question 2'];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My App')),
            body: Column(children: [
              Text('Text for body'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print('button3'),
              ),
            ])));
  }
}
