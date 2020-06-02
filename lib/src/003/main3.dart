import 'dart:async';

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
  List<double> _gyroscopeValues;
   List<StreamSubscription<dynamic>> _streamSubscriptions =
      <StreamSubscription<dynamic>>[];

  @override
  Widget build(BuildContext context) {
    final List<String> gyroscope =
        _gyroscopeValues?.map((double v) => v.toStringAsFixed(1))?.toList();
    return Container(
      child: Text(gyroscope.toString()),
    );
  }

  @override
  void initState() {
    super.initState();
    /*_streamSubscriptions.add(gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        _gyroscopeValues = <double>[event.x, event.y, event.z];
      });
    }));*/
  }
}

/*

class Day003 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocSupervisor.delegate = SimpleBlocDelegate();
    return MaterialApp(
      title: 'Daily UI challenge',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/003/bg.JPG"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
              ),
            ),
            child: null),
      ),
    );
  }
}
*/
