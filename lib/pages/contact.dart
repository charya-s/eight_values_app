import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

          // TITLE
          Container(
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: Text(
              "If you have any questions, concerns, feedback or inquiries, feel free to email me below!",
              style: TextStyle(
                fontSize: 20,
                
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // EMAIL
          Container(
            margin: EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width * 0.25,
            child: FloatingActionButton(
              child: Icon(EvaIcons.emailOutline),
              backgroundColor: Colors.white,
              onPressed: () => _launchURL(),
              foregroundColor: Colors.lightBlue,
            ),
          ),

        ]
      ),
    );
  }
}

_launchURL() async {
  const url = "mailto:arcturus.office@gmail.com?subject=8Values%20App";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}