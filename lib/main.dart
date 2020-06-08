import 'package:daily_ui_challenge/simple_bloc_delegate.dart';
import 'package:daily_ui_challenge/src/001/main1.dart';
import 'package:daily_ui_challenge/src/002/main2.dart';
import 'package:daily_ui_challenge/src/003/main3.dart';
import 'package:daily_ui_challenge/src/004/main4.dart';
import 'package:daily_ui_challenge/src/005/main5.dart';
import 'package:daily_ui_challenge/src/006/main6.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   // List<Widget> challengeButtons = _loadDailyChallenges(context);

    return MaterialApp(
      title: 'Daily UI challenge',
      debugShowCheckedModeBanner: false,
      home:
      //Day001(),
      //Day002(),
      //Day003(),
      //Day004(),
      //Day005(),
      Day006(),
      // ListOfChallengesWIP(),
    );
  }
}

class ListOfChallengesWIP extends StatelessWidget {
  const ListOfChallengesWIP({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daily UI challenge"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text("If you see this, the widget is not completed yet..")
            ],
          ),
        ),
      ),
    );
  }
}

// Current approach can't call the other classes correctly
List<Widget> _loadDailyChallenges(BuildContext context) {
  List<Widget> challengeButtons = List();
  challengeButtons.add(RaisedButton(
    onPressed: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => Day001())),
    child: Text("Day 001"),
  ));

  challengeButtons.add(RaisedButton(
    onPressed: () => Day002(),
    child: Text("Day 002"),
  ));

  return challengeButtons;
}
