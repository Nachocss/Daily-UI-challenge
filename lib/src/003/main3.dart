import 'dart:async';
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

/*
void creditCardMain() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyCreditCard());
}*/

class Day003 extends StatefulWidget {
  Day003({Key key}) : super(key: key);

  @override
  _Day003State createState() => _Day003State();
}

class _Day003State extends State<Day003> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily UI challenge',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/003/bg.JPG"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: SafeArea(
            top: true,
            child: SizedBox.expand(
              child: Container(
                decoration: BoxDecoration(
                  color: (Colors.black.withOpacity(0.3)),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 4,
                      child: Image.asset(
                        "assets/003/logo.png",
                        height: 3,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Flexible(
                      flex: 5,
                      child: SignInButton(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text("\n\nSign in with your Email", style: TextStyle(color: Colors.white,),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 58,
      decoration: BoxDecoration(
        color: (Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      alignment: Alignment.center,
      child: ListTile(
        dense: true,
        leading: Image.asset(
          "assets/003/alipay_logo.png",
        ),
        title: Text(
          "Sign in with Alipay",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}