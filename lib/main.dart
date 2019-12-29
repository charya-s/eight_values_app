import "package:flutter/material.dart";

import "./pages/intro_screen.dart";
import "./pages/main_page.dart";
import './pages/contact.dart';
import "./persistent_modules/main_appbar.dart";
import "./persistent_modules/main_drawer.dart";

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>(); // Scaffold key for drawer functionality.

  int _questionIndex = 0;
  int _pageIndex = 0;
  Widget _page;

  var _currScore = {
    "econ": 0,
    "dipl": 0,
    "govt": 0,
    "scty": 0,
  };

  var _prevScore = {};

  bool prevDisabled = true;

  void copyScore(var origin, var target) {
    target["econ"] = origin["econ"];
    target["dipl"] = origin["dipl"];
    target["govt"] = origin["govt"];
    target["scty"] = origin["scty"];
  }

  void _answerQuestion(int econ, int dipl, int govt, int scty) {
    copyScore(_currScore, _prevScore);
    setState(() {
      _currScore["econ"] += econ;
      _currScore["dipl"] += dipl;
      _currScore["govt"] += govt;
      _currScore["scty"] += scty;
      _questionIndex = _questionIndex + 1;
      prevDisabled = false;
    });
    print("\nSCORE: $_currScore\n");
  }

  void _prevQuestion() {
    print("\nGOING BACK TO: $_prevScore");
    setState(() {
      _questionIndex = _questionIndex - 1;
      copyScore(_prevScore, _currScore);
      prevDisabled = true;
    });
    print("WENT BACK TO: $_currScore\n");
  }

  void _changePage(int page) {
    setState(() {
      _pageIndex = page;   
    });
    print("\nPage changed to: $_pageIndex\n");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _currScore["econ"] = 0;
      _currScore["dipl"] = 0;
      _currScore["govt"] = 0;
      _currScore["scty"] = 0;
      copyScore(_currScore, _prevScore);
      _changePage(0);
    });
    print("\nQUIZ RESET\n");
  }

  @override
  Widget build(BuildContext context) {
    switch (_pageIndex) {
      case 0: {
        _page = IntroScreen(changePage: _changePage);
      }
      break;
      case 1: {
        _page = MainPage(
          answerQuestion: _answerQuestion,
          resetQuiz: _resetQuiz,
          questionIndex: _questionIndex,
          score: _currScore,
          prevQuestion: _prevQuestion,
          prevDisabled: prevDisabled,
        );
      }
      break;
      case 2: {
        _page = Contact();
      }
      break;
    }

    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,

        // APP BAR
        appBar: MainAppBar(scaffoldKey: _scaffoldKey, titleIndex: _pageIndex, changePage: _changePage),

        // DRAWER
        drawer: MainDrawer(changePage: _changePage),

        // BODY
        body: Container(child: _page, color: Colors.grey[100]),
        
      ),
    );
  }
}
