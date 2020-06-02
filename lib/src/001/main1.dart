import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Day001 extends StatefulWidget {
  @override
  Day001State createState() => Day001State();
}

class Day001State extends State<Day001> {
  Color purple = Color.fromRGBO(126, 37, 79, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollStartNotification) {
                //_onStartScroll(scrollNotification.metrics);
                print("Scroll Start");
              } else if (scrollNotification is ScrollUpdateNotification) {
                //_onUpdateScroll(scrollNotification.metrics);
                print("Scroll update");
                print(scrollNotification.metrics.pixels);
                if (scrollNotification.metrics.pixels > 100) {
                  SystemChrome.setEnabledSystemUIOverlays([]);
                } else {
                  SystemChrome.setEnabledSystemUIOverlays(
                      SystemUiOverlay.values);
                }
              } else if (scrollNotification is ScrollEndNotification) {
                //_onEndScroll(scrollNotification.metrics);
                print("Scroll end");
              }
            },
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Container(
                  color: purple,
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'assets/001/huella_white.png',
                          height: 100,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          padding:
                              EdgeInsets.only(top: 30, right: 20, left: 20),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Deja tu huella",
                                    style: TextStyle(
                                      color: purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(32),
                                child: Column(
                                  children: <Widget>[
                                    _inputText("Nombre *"),
                                    _inputText("Apellidos *"),
                                    _inputText("Email *"),
                                    _inputText("Repita su Email *"),
                                    _inputPasswordText("Contraseña *"),
                                    _inputPhoneText("Teléfono *"),
                                    PoliticaPrivacidadCheckbox(),
                                    _submitButton(),
                                  ],
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
            ),
          );
        },
      ),
    );
  }

  _inputText(String labelText) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextStyle(
          color: purple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _inputPasswordText(String labelText) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextStyle(
          color: purple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _inputPhoneText(String labelText) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextStyle(
          color: purple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _submitButton() {
    return Padding(
      padding: EdgeInsets.only(top: 22),
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        color: purple,
        onPressed: () {},
        child: const Text("Enviar",
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}

class PoliticaPrivacidadCheckbox extends StatefulWidget {
  PoliticaPrivacidadCheckbox({Key key}) : super(key: key);

  @override
  _PoliticaPrivacidadCheckboxState createState() =>
      _PoliticaPrivacidadCheckboxState();
}

class _PoliticaPrivacidadCheckboxState
    extends State<PoliticaPrivacidadCheckbox> {
  bool isChecked = false;
  Color purple = Color.fromRGBO(126, 37, 79, 1.0);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
            value: isChecked,
            activeColor: purple,
            onChanged: (bool value) {
              setState(() {
                isChecked = value;
              });
            }),
        Text(
          "Estoy de acuerdo con la \nPolítica de Privacidad *",
          style: TextStyle(
            color: purple,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
