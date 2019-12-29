import "package:flutter/material.dart";

import "./question.dart";
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final List<Map<String, Object>> answers;
  final Function answerQuestion;
  final int questionIndex;
  final List<Color> colors = [Colors.green[200], Colors.green[300], Colors.grey, Colors.red[200], Colors.red[300]];
  int colorIndex = 0;

  Quiz({
    @required this.questions, 
    @required this.answers,
    @required this.answerQuestion, 
    @required this.questionIndex
  });

  buildBody() {
    var body = <Widget>[];
    body.add(Question(questions, questionIndex));
    for (int i = 0; i < 5; i++) {
      body.add(Answer(
        answerText: answers[i]["answer"], 
        selectHandler: () => answerQuestion(
          int.parse(questions[questionIndex]["econ"].toString()) * int.parse(answers[i]["value"].toString()),
          int.parse(questions[questionIndex]["dipl"].toString()) * int.parse(answers[i]["value"].toString()),
          int.parse(questions[questionIndex]["govt"].toString()) * int.parse(answers[i]["value"].toString()),
          int.parse(questions[questionIndex]["scty"].toString()) * int.parse(answers[i]["value"].toString()),
        ), 
        borderColor: colors[colorIndex]));
        colorIndex++;
    }
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: buildBody(),
        ),
    );
  }
}