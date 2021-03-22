import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Alternative syntac for the main function
// void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  // @override is a declarator - we override the method of the class
  Widget build(BuildContext context) {
    var questions = ['question 1', 'question 2'];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My App')),
            body: Column(children: [
              Text(questions[questionIndex]),
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
              Text(
                'This text show you this bullshit.',
                style: TextStyle(
                    height: 2,
                    fontSize: 10,
                    fontFamily: 'Raleway',
                    fontFamilyFallback: <String>[
                      'Noto Sans CJK SC',
                      'Noto Color Emoji',
                    ]),
              )
            ])));
  }
}
