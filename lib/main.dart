import 'package:flutter/material.dart';
import 'package:quizzler_flutter/question.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> Scorekeeper = []; //empty list
  QuizBrain quizBrain= QuizBrain();
  void CheckAnswer(bool userPicked) {
    bool correctAnswer = quizBrain.getCorrectAnswer(); //----------------
    setState(() {
      if (userPicked == correctAnswer) {
        Scorekeeper.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        Scorekeeper.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
     quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(), //----------------
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ), //User selected True
              onPressed: () {
                CheckAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                CheckAnswer(false);
              },
              // User selected False
            ),
          ),
        ),
        Row(
          children: Scorekeeper,
        ),
      ],
    );
  }
}
