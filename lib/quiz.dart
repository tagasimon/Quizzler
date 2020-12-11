import 'package:flutter/material.dart';
import 'question.dart';
import 'quizBank.dart';
import 'quizBank.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

QuizBank qz = QuizBank();

class _QuizState extends State<Quiz> {
  List<Widget> scoreTracker = [];
  int scores = 0;

  var correctAnswer = qz.getQuestionAnswer();

  void userPickedAnswer(bool userPickedAns) {
    print("CORRENT ANSWER $correctAnswer");
    print("USER PICKED $userPickedAns");
    setState(() {
      if (correctAnswer == userPickedAns) {
        scores++;
        scoreTracker.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        scoreTracker.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      qz.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              qz.getQuestion(),
              // qns[qnNum].qnTxt,
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            flex: 2,
            child: Text(
              "Your Score: $scores",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            flex: 3,
            child: FlatButton(
                minWidth: 300.0,
                height: 100.0,
                color: Colors.green,
                // height: 100.0,
                child: Text(
                  "TRUE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  userPickedAnswer(true);
                }),
          ),
          SizedBox(height: 10.0),
          Expanded(
            flex: 3,
            child: FlatButton(
              minWidth: 300.0,
              height: 150.0,
              color: Colors.red,
              child: Text("FALSE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  )),
              onPressed: () {
                userPickedAnswer(false);
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scoreTracker,
            ),
          )
        ],
      ),
    );
  }
}
