import "package:flutter/material.dart";

class License extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 7.5),
          height: 50,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  "App by Charya S.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Text(
                "Quiz Content: Copyright (c) 2017 8values. http://8values.github.io.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ]
          )
        ),
      ),
    );    
  }
}