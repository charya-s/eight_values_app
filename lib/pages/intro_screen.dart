import "package:flutter/material.dart";

import "../data/intro_data.dart";

class IntroScreen extends StatelessWidget {

  final Function changePage;
  final Map<String, String> introData = returnIntroData();

  IntroScreen({ @required this.changePage });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[

          // TITLE
          Container( 
            margin: EdgeInsets.only(top: 20),
            child: Text(
              introData["title"],
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800]
              ),
            ),
          ), 

          // DESCRIPTION
          Container( 
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: Text(
              introData["desc"],
              style: TextStyle(
                fontSize: 17.5,
              ),
              textAlign: TextAlign.center,
            ),
          ), 

          // DISCLAIMERS
          Container( 
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: Text(
              introData["disc"],
              style: TextStyle(
                fontSize: 17.5,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ), 

          // START BUTTON
          Container( 
            margin: EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width * 0.25,
            child: FloatingActionButton.extended(
              label: Text("BEGIN"),
              onPressed: () => changePage(1),
              backgroundColor: Colors.lightBlue,
            ),
          ), 

        ]
      ),
    );
  }
}