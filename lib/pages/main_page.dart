import "package:flutter/material.dart";

import "../quiz.dart";
import '../result/result.dart';
import "../reset_button.dart";
import "../prev_button.dart";
import "../data/question_data.dart";
import "../data/answer_data.dart";

class MainPage extends StatelessWidget {

  final List<Map<String,Object>> questions = returnQuestions();
  final List<Map<String, Object>> answers = returnAnswers();
  final Function answerQuestion;
  final int questionIndex;
  final bool prevDisabled;
  final score;
  final Function resetQuiz;
  final Function prevQuestion;

  MainPage({
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.score,
    @required this.resetQuiz,
    @required this.prevQuestion,
    @required this.prevDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.grey[100],
          child: Column(
            children: 
              ( 
                <Widget>[
                  Container (
                    height: MediaQuery.of(context).size.height * 0.725,
                    child: 
                    (
                      (questionIndex < questions.length) ? 
                        Quiz(questions: questions, answers: answers, answerQuestion: answerQuestion, questionIndex: questionIndex)
                      :
                        Result(score: score, questions: questions)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      children: <Widget>[
                        PrevButton(prevQuestion, prevDisabled: prevDisabled),
                        ResetButton(resetQuiz),
                      ],
                    ),
                  ),
                  
                ]
              )
          ),
        )
      ]
    );
  }
}