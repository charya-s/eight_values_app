import "package:flutter/material.dart";

class ResultTitle extends StatelessWidget {

  final String title;

  ResultTitle({ @required this.title });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$title",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}