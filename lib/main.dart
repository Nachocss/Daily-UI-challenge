import 'package:daily_ui_challenge/simple_bloc_delegate.dart';
import 'package:daily_ui_challenge/src/001/main.dart';
import 'package:daily_ui_challenge/src/002/main2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
 // BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //creditCardMain();
    return MaterialApp(
      title: 'Daily UI challenge',
      debugShowCheckedModeBanner: false,
      home:
      CreditCard(),
      //SignUp(),
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
