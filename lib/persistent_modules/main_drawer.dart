import "package:flutter/material.dart";
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import "./license.dart";

class MainDrawer extends StatelessWidget {

  final Function changePage;

  MainDrawer({ @required this.changePage });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: Column(
          children: <Widget> [
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                    child: Text(""),
                  ),

                  ListTile(
                    leading: Icon(EvaIcons.emailOutline, color: Colors.lightBlueAccent,),
                    title: Text('Contact Me'),
                    onTap: () { Navigator.of(context).pop(); changePage(2); },
                  ),
                ],
              ),
            ),

            License(),

          ]
        ),
      )
    );
  }
}