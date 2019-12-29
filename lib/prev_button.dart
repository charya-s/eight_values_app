import "package:flutter/material.dart";
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class PrevButton extends StatelessWidget {

  final Function prevQuestion;
  final bool prevDisabled;

  PrevButton( this.prevQuestion, { @required this.prevDisabled } );

  Function prev(bool val) {
    if (!val) {
      return prevQuestion;
    }
    else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            child: Icon(EvaIcons.arrowBackOutline),
            backgroundColor: Colors.white,
            onPressed: prev(prevDisabled),
            foregroundColor: Colors.lightBlue,
            disabledElevation: 0,
          ),
        ),
      ),
    );
  }
}