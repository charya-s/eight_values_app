import "package:flutter/material.dart";

class ResultDesc extends StatelessWidget {

  final List<Map<String, Object>> titles;

  final TextStyle axisTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  final TextStyle ideologyTitle = TextStyle(
    fontSize: 20,
    fontStyle: FontStyle.italic
  );

  ResultDesc({ @required this.titles });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30, left: 0, right: 0),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          // ECONOMIC AXIS
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(titles[0]["title"], style: ideologyTitle),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Equality", style: axisTitle),
                          Text("${titles[0]["value"]}%", style: axisTitle),
                        ]
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("${100 - titles[0]["value"]}%", style: axisTitle),
                          Text("Markets", style: axisTitle),
                        ]
                      ),
                    ),
                  ]
                ),
              ]
            ),
          ),

          // DIPLOMATIC AXIS
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(titles[1]["title"], style: ideologyTitle),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Nation", style: axisTitle),
                          Text("${100 - titles[1]["value"]}%", style: axisTitle),
                        ]
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("${titles[1]["value"]}%", style: axisTitle),
                          Text("World", style: axisTitle),
                        ]
                      ),
                    ),
                  ]
                ),
              ]
            ),
          ),

          // CIVIL AXIS
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(titles[2]["title"], style: ideologyTitle),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Liberty", style: axisTitle),
                          Text("${titles[2]["value"]}%", style: axisTitle),
                        ]
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("${100 - titles[2]["value"]}%", style: axisTitle),
                          Text("Authority", style: axisTitle),
                        ]
                      ),
                    ),
                  ]  
                ),
              ]
            ),
          ),

          // SOCIETAL AXIS
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(titles[3]["title"], style: ideologyTitle),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Tradition", style: axisTitle),
                          Text("${100 - titles[3]["value"]}%", style: axisTitle),
                        ]
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("${titles[3]["value"]}%", style: axisTitle),
                          Text("Progress", style: axisTitle),
                        ]
                      ),
                    ),
                  ]
                ),
              ]
            ),
          ),

        ]
      ),
    );
  }
}