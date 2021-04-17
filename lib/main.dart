import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'FirstRoute.dart';

void main() {
  runApp(MyApp());
}

// Alternative syntac for the main function
// void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var answerText = '';

  void _answerQuestion() {
    setState(() {
      if (questionIndex < 1) {
        questionIndex = questionIndex + 1;
        answerText = 'answer = ' + questionIndex.toString();
      } else {
        questionIndex = questionIndex - 1;
        answerText = 'answer = ' + questionIndex.toString();
      }
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
              Question(questions[questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Text(
                answerText,
                style: TextStyle(
                    height: 2,
                    fontSize: 10,
                    fontFamily: 'Raleway',
                    fontFamilyFallback: <String>[
                      'Noto Sans CJK SC',
                      'Noto Color Emoji',
                    ]),
              ),
              ElevatedButton(
                  child: Text('first route'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstRoute()));
                  }),
            ])));
  }
}
