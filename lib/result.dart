import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText =
          'My sweet summer child, your score is ' + resultScore.toString();
    } else if (resultScore <= 30) {
      resultText =
          'Stop browsing internet, your score is ' + resultScore.toString();
    } else {
      resultText =
          'The ultimate memelord, your score is ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz?'),
            textColor: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
