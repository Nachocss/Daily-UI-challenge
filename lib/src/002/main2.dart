import 'package:daily_ui_challenge/src/002/bloc/credit_card_bloc.dart';
import 'package:daily_ui_challenge/src/002/bloc/credit_card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';


class Day002 extends StatefulWidget {
  Day002({
    Key key,
  }) : super(key: key);

  @override
  _Day002State createState() => _Day002State();
}

class _Day002State extends State<Day002> {
  CreditCardBloc creditCardBloc = CreditCardBloc();
  final _name_controller = TextEditingController(text: "John Wilson");
  final _expiration_controller = TextEditingController(text: "07/22");
  final _number_controller = TextEditingController(text: "4599 6584 4412 2101");
  final _security_controller = TextEditingController(text: "310");
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreditCardBloc, CreditCardState>(
      bloc: creditCardBloc,
      builder: (context, state) {
        return SafeArea(
          top: true,
          bottom: true,
          child: Scaffold(
            backgroundColor: Colors.grey[900],
            body: Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  //  creditCard(name_controller: _name_controller, text: _name_controller.text
                  //    ,cardX: state.x, cardY: state.y, scale: state.scale),
                  _creditCard(state.x, state.y, state.scale),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height - 200,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(34, 34, 34, 0.9),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 32, left: 32, right: 32),
                      child: Column(
                        children: <Widget>[
                          /*   RaisedButton(
                            child: Text("abc"),
                            onPressed: () =>
                                creditCardBloc.add(ExpirationDateFocus()),
                          ),*/
                          /*TextFormField(
                            controller: _name_controller,
                            onChanged: (value) {
                              print(_name_controller.text);
                              print(value);
                            },
                          ),*/
                          Container(
                            height: MediaQuery.of(context).size.height - 400,
                            child: ListView(
                              controller: scrollController,
                              scrollDirection: Axis.vertical,
                              children: <Widget>[
                                _inputText(
                                    "Name", _name_controller, scrollController),
                                // Spacer(flex: 2),
                                _inputText("Card number", _number_controller,
                                    scrollController),
                                _inputText("Expiration date",
                                    _expiration_controller, scrollController),
                                _inputText("Security code",
                                    _security_controller, scrollController),
                                Text(
                                  "",
                                  style: TextStyle(height: 15),
                                ),
                                //  Spacer(flex: 2),
                              ],
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              creditCardBloc.add(OverviewFocus());
                            },
                            color: Colors.transparent,
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF0D47A1),
                                    Color(0xFF1976D2),
                                    Color(0xFF42A5F5),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(' Submit ',
                                  style: TextStyle(fontSize: 20)),
                            ),
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
      },
    );
  }

  _inputText(String labelText, TextEditingController controller,
      ScrollController scrollController) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        ),
        onTap: () {
          switch (labelText) {
            case "Name":
              creditCardBloc.add(CardholderNameFocus());
              scrollController.jumpTo(0);
              break;
            case "Card number":
              creditCardBloc.add(CardNumberFocus());
              scrollController.jumpTo(116);
              break;
            case "Expiration date":
              creditCardBloc.add(ExpirationDateFocus());
              scrollController.jumpTo(173);
              break;
            case "Security code":
              creditCardBloc.add(SecurityCodeFocus());
              scrollController.jumpTo(230);
              break;
          }
        },
        //   onFieldSubmitted: (x) => creditCardBloc.add(OverviewFocus()),
        //   onSaved: (x) => creditCardBloc.add(OverviewFocus()),
        //   onEditingComplete: () => creditCardBloc.add(OverviewFocus()),
      ),
    );
  }

  _creditCard(double cardX, cardY, scale) {
    return AnimatedSwitcher(
      duration: Duration(seconds: 2),
      child: Transform.translate(
        offset: Offset(cardX, cardY), // Translate
        child: Transform.scale(
          scale: scale, // Scale
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 109, 202, 1.0),
                  Color.fromRGBO(0, 61, 116, 1.0),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                //     stops: [0.1,1]
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Credit Card",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                    ),
                  ],
                ), //CREDIT CARD TEXT
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 40,
                        width: 80,
                        child: Image.asset("assets/002/chip.png")
                      /*  DecoratedBox(
                          decoration: BoxDecoration(color: Colors.yellow[100]),
                        ),*/
                      ),
                    ), //chip
                    Padding(
                      padding: EdgeInsets.only(left: 128),
                      child: Container(
                        child: Text(
                          "07/22",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ),
                    ), //Expiration date
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "5542 1256 6521 5412",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ), //Card number
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: NamePreview(
                            text: _name_controller.text /*"JHON BLOW"*/),
                        /*Text(
                            "JHON BLOW",
                            style: TextStyle(color: Colors.white70, fontSize: 20),
                          ),*/
                      ),
                    ), // Name
                    Spacer(flex: 4),
                    Padding(
                      padding: EdgeInsets.only(top: 6, bottom: 6, right: 55, ),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "310",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ),
                    ), // Name
                  ],
                ),
              ],
            ),
            height: 53.98 + 53.98 + 53.98 + 53.98,
            width: 85.6 + 85.6 + 85.6 + 85.6,
          ),
        ),
      ),
    );
  }
}

class NamePreview extends StatefulWidget {
  final String text;
  NamePreview({Key key, this.text}) : super(key: key);

  @override
  _NamePreviewState createState() => _NamePreviewState(text);
}

class _NamePreviewState extends State<NamePreview> {
  final String text;
  _NamePreviewState(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white70, fontSize: 20),
    );
  }
}

class creditCard extends StatefulWidget {
  final double cardX;
  final double cardY;
  final double scale;
  final TextEditingController name_controller;
  final String text;
  creditCard(
      {Key key,
      this.cardX,
      this.cardY,
      this.scale,
      this.name_controller,
      this.text})
      : super(key: key);

  @override
  _creditCardState createState() => _creditCardState(name_controller, text,
      cardX: this.cardX, cardY: this.cardY, scale: this.scale);
}

class _creditCardState extends State<creditCard> {
  double cardX = 0;
  double cardY = 0;
  double scale = 1;
  TextEditingController name_controller;
  final String text;

  _creditCardState(this.name_controller, this.text,
      {this.cardX, this.cardY, this.scale});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(seconds: 2),
      child: Transform.translate(
        offset: Offset(cardX, cardY), // Translate
        child: Transform.scale(
          scale: scale, // Scale
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 109, 202, 1.0),
                  Color.fromRGBO(0, 61, 116, 1.0),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                //     stops: [0.1,1]
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Credit Card",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                    ),
                  ],
                ), //CREDIT CARD TEXT
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        padding: EdgeInsets.only(left: 30),
                        height: 40,
                        width: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.yellow[100]),
                        ),
                      ),
                    ), //contactless stuff of the cards
                    Padding(
                      padding: EdgeInsets.only(left: 128),
                      child: Container(
                        child: Text(
                          "07/22",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ),
                    ), //Expiration date
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ), //Card number
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: NamePreview(
                            text: name_controller.text /*"JHON BLOW"*/),
                        /*Text(
                          "JHON BLOW",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),*/
                      ),
                    ), // Name
                  ],
                ),
              ],
            ),
            height: 53.98 + 53.98 + 53.98 + 53.98,
            width: 85.6 + 85.6 + 85.6 + 85.6,
          ),
        ),
      ),
    );
  }
}

/*
  return AnimatedSwitcher(
        duration: Duration(seconds: 2),
        child: Transform.translate(
          offset: Offset(cardX, cardY),
          child: Transform.scale(
            scale: scale,
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 109, 202, 1.0),
                    Color.fromRGBO(0, 61, 116, 1.0),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  //     stops: [0.1,1]
                ),
              ),
              child: Text("TESTING"),
              height: 53.98 + 53.98 + 53.98 + 53.98,
              width: 85.6 + 85.6 + 85.6 + 85.6,
            ),
          ),
        ),
      );
      **/
