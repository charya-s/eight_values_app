import "package:flutter/material.dart";
import "dart:math";

import "../data/result_data.dart";
import "../data/axis_data.dart";
import './result_title.dart';
import './result_desc.dart';

class Result extends StatelessWidget {

  final score;
  final List<Map<String, Object>> questions;

  final List<Map<String, Object>> resultData = returnResultData();

  Result({ @required this.score , @required this.questions});

  @override
  Widget build(BuildContext context) {

    var result = findResult(resultData, questions, score["econ"], score["dipl"], score["govt"], score["scty"]);

    final resultTitles = 
    [
      {
        "title": findAxis(0, result[1]), 
        "value": result[1].round(),
      },
      {
        "title": findAxis(1, result[2]), 
        "value": result[2].round(),
      },
      {
        "title": findAxis(2, result[3]), 
        "value": result[3].round(),
      },
      {
        "title": findAxis(3, result[4]), 
        "value": result[4].round(),
      },
    ];

    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20, left: 40, right: 40),
          width: double.infinity,
          child: Column(
            children: <Widget>[ 
              ResultTitle(title: resultData[result[0]]["name"]),
              ResultDesc(titles: resultTitles),
            ],
          ),
        )
      ]
    );
  }
}


// CALCULATING THE RESULT
List findResult(final List<Map<String, Object>> resultData, final List<Map<String, Object>> questions, int econ, int dipl, int govt, int scty) {

    int eMax = 0, dMax = 0, gMax = 0, sMax = 0;
    double eVal, dVal, gVal, sVal;

    for (int i = 0; i < questions.length; i++) {
      eMax += int.parse(questions[i]["econ"].toString()).abs()*10;
      dMax += int.parse(questions[i]["dipl"].toString()).abs()*10;
      gMax += int.parse(questions[i]["govt"].toString()).abs()*10;
      sMax += int.parse(questions[i]["scty"].toString()).abs()*10; 
    }

    eVal = ((econ+eMax)/(2*eMax))*100;
    dVal = ((dipl+dMax)/(2*dMax))*100;
    gVal = ((govt+gMax)/(2*gMax))*100;
    sVal = ((scty+sMax)/(2*sMax))*100;

    print("Max score: $eMax : $dMax : $gMax : $sMax");
    print("Final score: $eVal : $dVal : $gVal : $sVal");

    int index = 0;
    double ideodist = double.infinity;

    for (int i = 0; i < resultData.length; i++) {
      double dist = 0;
      dist += pow((int.parse(resultData[i]["econ"].toString()) - eVal).abs(), 2);
      dist += pow((int.parse(resultData[i]["govt"].toString()) - gVal).abs(), 2);
      dist += pow((int.parse(resultData[i]["dipl"].toString()) - dVal).abs(), 1.73856063);
      dist += pow((int.parse(resultData[i]["scty"].toString()) - sVal).abs(), 1.73856063);

      if (dist < ideodist) {
        ideodist = dist;
        index = i;
      }
    }

    return [index, eVal, dVal, gVal, sVal];
  }


  // GETTING THE AXIS RESULT
  String findAxis(int axis, double val) {

    final List<Map<String, List<String>>> axisList = returnAxis();

    if (val > 100) { 
      return ""; 
    } else if (val > 90) { 
      return axisList[axis]["titles"][0]; 
    } else if (val > 75) { 
      return axisList[axis]["titles"][1]; 
    } else if (val > 60) { 
      return axisList[axis]["titles"][2]; 
    } else if (val >= 40) { 
      return axisList[axis]["titles"][3]; 
    } else if (val >= 25) { 
      return axisList[axis]["titles"][4]; 
    } else if (val >= 10) { 
      return axisList[axis]["titles"][5]; 
    } else if (val >= 0) { 
      return axisList[axis]["titles"][6];
    } else {
      return "";
    }
  }