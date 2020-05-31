import 'package:daily_ui_challenge/src/001/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily UI challenge',

      debugShowCheckedModeBanner: false,
      home: SignUp(),
      // HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daily UI challenge"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
