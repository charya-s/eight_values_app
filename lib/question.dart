import "package:flutter/material.dart";

class Question extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;

  Question( this.questions , this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.21,
      child: Column(
        children: <Widget> [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
            child: Text(
              "${questionIndex+1} of ${questions.length}",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 0, left: 20, right: 20),
            child: Text(
              questions[questionIndex]["question"],
              style: TextStyle(
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
          )
        ]
      ),
    );
  }
}