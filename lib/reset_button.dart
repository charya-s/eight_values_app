import "package:flutter/material.dart";
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ResetButton extends StatelessWidget {

  final Function resetQuiz;

  ResetButton(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            child: Icon(EvaIcons.refresh),
            backgroundColor: Colors.white,
            onPressed: resetQuiz,
            foregroundColor: Colors.lightBlue,
          ),
        ),
      ),
    );  
  }
}