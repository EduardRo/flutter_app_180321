import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

// Alternative syntac for the main function
// void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  }),
              Answer(answerText),
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
              )
            ])));
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
