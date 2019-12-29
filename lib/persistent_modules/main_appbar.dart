import "package:flutter/material.dart";
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  final Function changePage;

  final int titleIndex;
  final List<Icon> icons = [Icon(EvaIcons.menu2Outline), Icon(EvaIcons.menu2Outline), Icon(EvaIcons.arrowBackOutline), Icon(EvaIcons.arrowBack)];

  MainAppBar({ @required this.scaffoldKey, @required this.titleIndex, @required this.changePage });

  String getTitle() {
    String title;
    switch (titleIndex) {
      case 0: {
        title = "8Values.";
      }
      break;
      case 1: {
        title = "8Values.";
      }
      break;

      case 2: {
        title = "Contact Me.";
      }
      break;
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: <Widget>[

          Container(
            child: IconButton(
              icon: icons[titleIndex],
              color: Colors.lightBlueAccent,
              onPressed: () { 
                if(titleIndex == 0 || titleIndex == 1) {
                  scaffoldKey.currentState.openDrawer();
                } else {
                  changePage(0);
                } 
              },
              iconSize: 30,
            ),
            margin: EdgeInsets.only(right: 15, left: 5),
          ),

          Text(
            "${getTitle()}",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Gilroy",
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),

        ]
      ),
      backgroundColor: Colors.grey[100],
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.blue),
      titleSpacing: 0.00,
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

/*IconButton(
        icon: Icon(EvaIcons.menu2Outline),
        color: Colors.lightBlueAccent,
        onPressed: () { scaffoldKey.currentState.openDrawer(); },
      )*/