import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Day005 extends StatefulWidget {
  Day005({Key key}) : super(key: key);

  @override
  _Day005State createState() => _Day005State();
}

class _Day005State extends State<Day005> {
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
        appBar: GradientAppBar(
          title: Text("OUYA logo redesign"),
          backgroundColorStart: Colors.cyan,
          backgroundColorEnd: Colors.indigo,
        ),
        body: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Spacer(flex: 3),
                  OriginalLogo(),
                  Spacer(),
                  Logo(),
                  Spacer(),
                  AppIcon(),
                  Spacer(),
                  BlackAndWhiteLogos(),
                  Spacer(flex: 5),
                ],
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Spacer(flex: 5),
                  Center(
                    child: Text(
                      "Original logo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(flex: 7),
                  Center(
                    child: Text(
                      "Redesigned logo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(flex: 7),
                  Center(
                    child: Text(
                      "App launcher icon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(flex: 4),
                  Center(
                    child: Text(
                      "Alternative colors",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Spacer(flex: 7),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class OriginalLogo extends StatelessWidget {
  const OriginalLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 150,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/005/logo_original.png"),
            ],
          ),
        ),
      ],
    );
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 50,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/005/logo_app_icon.png"),
            ],
          ),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/005/logo.png"),
            ],
          ),
        ),
      ],
    );
  }
}

class BlackAndWhiteLogos extends StatelessWidget {
  const BlackAndWhiteLogos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan[400], Colors.indigo[400]]),
          ),
          child: Row(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset("assets/005/logo_black.png")),
              Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Image.asset("assets/005/logo_white.png")),
            ],
          ),
        ),
      ],
    );
  }
}

/*


class Day005 extends StatefulWidget {
  Day005({Key key}) : super(key: key);

  @override
  _Day005State createState() => _Day005State();
}

class _Day005State extends State<Day005> {
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
        appBar: GradientAppBar(
          title: Text("OUYA logo redesign"),
          backgroundColorStart: Colors.cyan,
          backgroundColorEnd: Colors.indigo,
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Spacer(flex: 3),
            OriginalLogo(),
            Spacer(),
            Logo(),
            Spacer(),
            AppIcon(),
            Spacer(),
            BlackAndWhiteLogos(),
            Spacer(flex: 5),
          ],
        )),
      ),
    );
  }
}

class OriginalLogo extends StatelessWidget {
  const OriginalLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 150,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/005/logo_original.png"),
            ],
          ),
        ),
        Center(
            child: Text(
          " Original OUYA logo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ],
    );
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 50,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/005/logo_app_icon.png"),
            ],
          ),
        ),
        Center(
            child: Text(
          " App launcher icon",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              Image.asset("assets/005/logo.png"),
            ],
          ),
        ),
        Center(
            child: Text(
          " Redesigned logo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ],
    );
  }
}

class BlackAndWhiteLogos extends StatelessWidget {
  const BlackAndWhiteLogos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan[400], Colors.indigo[400]]),
          ),
          child: Row(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset("assets/005/logo_black.png")),
              Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Image.asset("assets/005/logo_white.png")),
            ],
          ),
        ),
        Center(
            child: Text(
          " Alternative colors",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ],
    );
  }
}



*/
