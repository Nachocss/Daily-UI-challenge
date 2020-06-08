import 'package:flutter/material.dart';

class Day006 extends StatefulWidget {
  Day006({Key key}) : super(key: key);

  @override
  _Day006State createState() => _Day006State();
}

class _Day006State extends State<Day006> {
  TextStyle style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily UI challenge',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(overflow: Overflow.visible, children: <Widget>[
                Image.asset("assets/006/banner.jpg"),
                Positioned(
                    bottom: -64,
                    left: 32,
                    child: Image.asset(
                      "assets/006/profile_picture.png",
                      height: 128,
                    )),
                Positioned(
                    bottom: -50,
                    left: 192,
                    child: Text(
                      "u/randomUser",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          fontSize: 25),
                    )),
              ]),
              SizedBox(height: 100),
              Container(
                padding: EdgeInsets.only(right: 40, left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Karma",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          fontSize: 25),
                    ),
                    Text(
                      "Cake day",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          fontSize: 25),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 40, left: 40, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.graphic_eq,
                              size: 20,
                              color: Color.fromRGBO(255, 68, 0, 1),
                            ),
                          ),
                          TextSpan(
                            text: "13.957",
                            style: TextStyle(
                                color: Color.fromRGBO(100, 100, 100, 1),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.cake,
                              size: 20,
                              color: Color.fromRGBO(255, 68, 0, 1),
                            ),
                          ),
                          TextSpan(
                            text: "12 August 2013",
                            style: TextStyle(
                                color: Color.fromRGBO(100, 100, 100, 1),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(26, 26, 27, 1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[700])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 21.0, bottom: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Trophy Case",
                              style: TextStyle(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset("assets/006/trophy1.png"),
                          Image.asset("assets/006/trophy2.png"),
                          Image.asset("assets/006/trophy3.png"),
                          Image.asset("assets/006/trophy4.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromRGBO(26, 26, 27, 1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[700])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 21.0, bottom: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Moderator of these communities",
                              style: TextStyle(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ClipOval(
                            child: Image.asset(
                              "assets/006/sub1.png",
                              height: 71,
                            ),
                          ),
                          Image.asset(
                            "assets/006/sub2.png",
                            height: 71,
                          ),
                          Image.asset(
                            "assets/006/sub3.png",
                            height: 71,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
