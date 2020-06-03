
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Day004 extends StatefulWidget {
  Day004({Key key}) : super(key: key);

  @override
  _Day004State createState() => _Day004State();
}

class _Day004State extends State<Day004> {
  TextStyle resultStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily UI challenge',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: GradientAppBar(
          title: Text("Currency converter"),
          backgroundColorStart: Colors.cyan,
          backgroundColorEnd: Colors.indigo,
          leading: Icon(Icons.menu),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan[400], Colors.indigo[400]]),
          ),
          child: SizedBox.expand(
              child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 10 / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "300.00",
                      style: resultStyle,
                      textAlign: TextAlign.end,
                    ),
                    AspectRatio(aspectRatio: 10 / 100),
                    CurrencySelector(defaultValue: '€'),
                    AspectRatio(
                      aspectRatio: 10 / 18,
                    ),
                  ],
                ),
              ), // YOUR currency
              AspectRatio(
                aspectRatio: 10 / 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "337.05",
                      style: resultStyle,
                      textAlign: TextAlign.end,
                    ),
                    AspectRatio(aspectRatio: 10 / 34),
                    Container(
                      child: Row(
                        children: <Widget>[
                          CurrencySelector(defaultValue: '\$'),
                        ],
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 10 / 6,
                    ),
                  ],
                ),
              ), // Converted currency
              AspectRatio(
                aspectRatio: 20 / 2,
              ),
              Divider(
                height: 8,
                thickness: 4,
                color: Colors.indigo,
                indent: 20,
                endIndent: 20,
              ),
              AspectRatio(
                aspectRatio: 20 / 2,
              ),
              Keyboard(),
            ],
          )),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

class CurrencySelector extends StatefulWidget {
  final String defaultValue;
  CurrencySelector({
    this.defaultValue,
    Key key,
  }) : super(key: key);

  @override
  _CurrencySelectorState createState() => _CurrencySelectorState(defaultValue);
}

class _CurrencySelectorState extends State<CurrencySelector> {
  String dropdownValue;

  _CurrencySelectorState(this.dropdownValue);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.indigo,
        size: 30,
      ),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
      dropdownColor: Color.fromRGBO(63, 81, 181, 0.8),
      /*  underline: Container(
        height: 2,
        color: Colors.indigo,
      ),*/
      underline: SizedBox(),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['€', '\$', '₵', '฿']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList(),
    );
  }
}

class Keyboard extends StatefulWidget {
  Keyboard({Key key}) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _Button(symbol: "7"),
            Spacer(flex: 1),
            _Button(symbol: "8"),
            Spacer(flex: 1),
            _Button(symbol: "9"),
          ],
        ),
        AspectRatio(aspectRatio: 20 / 1),
        Row(
          children: <Widget>[
            _Button(symbol: "4"),
            Spacer(flex: 1),
            _Button(symbol: "5"),
            Spacer(flex: 1),
            _Button(symbol: "6"),
          ],
        ),
        AspectRatio(aspectRatio: 20 / 1),
        Row(
          children: <Widget>[
            _Button(symbol: "1"),
            Spacer(flex: 1),
            _Button(symbol: "2"),
            Spacer(flex: 1),
            _Button(symbol: "3"),
          ],
        ),
        AspectRatio(aspectRatio: 20 / 1),
        Row(
          children: <Widget>[
            _Button(symbol: "."),
            Spacer(flex: 1),
            _Button(symbol: "0"),
            Spacer(flex: 1),
            _Button(symbol: "⌫"),
          ],
        ),
      ]),
    );
  }
}

class _Button extends StatelessWidget {
  final String symbol;
  const _Button({Key key, this.symbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: FlatButton(
        onPressed: () => null,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Text(
          symbol,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: (symbol != "⌫") ? 50 : 44),
        ),
        color: Color.fromRGBO(63, 81, 181, 0.8),
      ),
    );
  }
}
