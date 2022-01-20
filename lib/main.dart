// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answerText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 4},
        {'text': 'Rainbow', 'score': 69},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answerText': [
        {'text': 'Horse', 'score': 10},
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Cat', 'score': 2},
        {'text': 'Dog', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your favorite meme?',
      'answerText': [
        {'text': 'Super Idol', 'score': 10},
        {'text': 'Helikopter Helikopter', 'score': 8},
        {'text': 'Wtf is \'meme\'?', 'score': 2},
        {'text': 'asdf movies', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
