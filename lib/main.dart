import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionIndex = 0;

  void answerTheQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: () => print('Answer 1 choosen!'),
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 choosen!'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 3 choosen!'),
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
