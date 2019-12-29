import "package:flutter/material.dart";

class Answer extends StatelessWidget {

  final String answerText; 
  final Function selectHandler;
  final Color borderColor;

  Answer({@required this.answerText, @required this.selectHandler, this.borderColor });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 250,
      height: 40,
      child: RaisedButton(
        child: Text(answerText), 
        onPressed: selectHandler, 
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(
            color: borderColor, 
            width: 1.5
          ),
          
        ),
        textColor: Colors.black,
      ),      
    );
  }
}