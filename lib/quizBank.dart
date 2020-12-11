import 'question.dart';

class QuizBank {
  int _qnNum = 0;
  List<Question> _qns_bank = [
    Question(q: "Is Your Name Simon", a: false),
    Question(q: "Is Bobi the President", a: true),
    Question(q: "Are you Married?", a: true)
  ];

  void nextQuestion() {
    if (_qnNum < _qns_bank.length - 1) {
      _qnNum++;
    }
  }

  String getQuestion() {
    return _qns_bank[_qnNum].qnTxt;
  }

  bool getQuestionAnswer() {
    // bool correct_aa = _qns_bank[_qnNum].ans;
    // print(" FROM METHOD CORRECT $correct_aa");
    return _qns_bank[_qnNum].ans;
  }
}
