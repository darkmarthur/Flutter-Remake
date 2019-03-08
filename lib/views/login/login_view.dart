import 'package:flutter/material.dart';
import 'package:chedraui_flutter/utils/HexValueConverter.dart';
import 'package:chedraui_flutter/widgets/logo_widget.dart';
import 'package:chedraui_flutter/widgets/gradient_button.dart';

class LoginView extends StatefulWidget {
  final Widget child;

  LoginView({Key key, this.child}) : super(key: key);

  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // row flex sizes
  final _rowLogo = 4;
  final _rowTextFieldUser = 1;
  final _rowTextFieldsPass = 1;
  final _rowTextFieldsFingerPrint = 1;
  final _rowTextFieldsButtonLogin = 2;
  final _rowTextFieldsBottomItems = 4;
  Color bgGradienttop = HexColor('#0897FF');
  Color bgGradientBottom = HexColor('#0064FF');
  Color bottomTextColor = Colors.white;
  Color txbTextColor = Colors.black;
  Color txbBorderColor = HexColor('#F28524');

  ////////////////////////////////  LOCAL VARIABLES  ////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
          ),
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0, 0),
                  radius: .8,
                  colors: [
                    bgGradienttop,
                    bgGradientBottom,
                  ],
                  stops: [0.4, 1.0],
                ),
              ),
            ),
            clipper: new CustomClip(),
          ),
          Positioned(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: new Padding(
                      child: new LogoChedraui(),
                      // child: new FlutterLogo(size: 88.0, colors: Colors.blue),
                      padding: const EdgeInsets.all(24.0),
                    ),
                    flex: _rowLogo,
                  ),
                  Expanded(
                    child: new Padding(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          hintText: ' ',
                          helperText: ' ',
                          labelText: 'E-Mail',
                          icon: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          prefixText: ' ',
                          suffixText: ' ',
                          suffixStyle: const TextStyle(color: Colors.black),
                          fillColor: bottomTextColor,
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                                color: txbBorderColor, width: 2.0),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Email cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
                    ),
                    flex: _rowTextFieldsPass,
                  ),
                  Expanded(
                    child: new Padding(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          hintText: ' ',
                          helperText: ' ',
                          labelText: 'Contraseña',
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          prefixText: ' ',
                          suffixText: ' ',
                          suffixStyle: const TextStyle(color: Colors.black),
                          fillColor: bottomTextColor,
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                                color: txbBorderColor, width: 2.0),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Email cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
                    ),
                    flex: _rowTextFieldUser,
                  ),
                  Expanded(
                    child: new Padding(
                      child: new Icon(Icons.fingerprint,
                          color: const Color(0xFF000000), size: 33.0),
                      padding:
                          const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 10.0),
                    ),
                    flex: _rowTextFieldsFingerPrint,
                  ),
                  Expanded(
                    child: new Padding(
                      child: new GradientButton(text: "test"),
                      // child: new InkWell(
                      //   onTap: () => print('hello'),
                      //   child: new Container(
                      //     //width: 100.0,
                      //     height: 25.0,
                      //     decoration: new BoxDecoration(
                      //       color: txbBorderColor,
                      //       // border:
                      //       //     new Border.all(color: Colors.white, width: 2.0),
                      //       borderRadius: new BorderRadius.circular(25.0),
                      //     ),
                      //     child: new Center(
                      //       child: new Text(
                      //         'Ingresar',
                      //         style: new TextStyle(
                      //             fontFamily: "Raleway",
                      //             fontWeight: FontWeight.w600,
                      //             fontSize: 28.0,
                      //             color: bottomTextColor),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // child: new RaisedButton(
                      //     key: null,
                      //     onPressed: buttonPressed,
                      //     color: const Color(0xFFe0e0e0),
                      //     child: new Text(
                      //       "Acceder",
                      //       style: new TextStyle(
                      //           fontSize: 13.0,
                      //           color: bottomTextColor,
                      //           fontWeight: FontWeight.w200,
                      //           fontFamily: "Roboto"),
                      //     )),
                      padding:
                          const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 10.0),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: new Icon(Icons.settings,
                                      color: bottomTextColor, size: 60.0),
                                  decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(5.0, 20.0),
                                        blurRadius: 120.0,
                                      ),
                                    ],
                                  ),
                                ),
                                new Text(
                                  "Cuenta",
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: bottomTextColor,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Roboto"),
                                )
                              ]),
                          new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: new Icon(Icons.account_circle,
                                      color: bottomTextColor, size: 60.0),
                                  decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(5.0, 20.0),
                                        blurRadius: 120.0,
                                      ),
                                    ],
                                  ),
                                ),
                                new Text(
                                  "Invitado",
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: bottomTextColor,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Roboto"),
                                )
                              ])
                        ]),
                    flex: _rowTextFieldsBottomItems,
                  )
                ]),
          ),
        ]));
  }
}

void buttonPressed() {}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var edgeAnchor = 1.8;
    var bezierAnchor = 1.5;
    var path = new Path();

    path.moveTo(0.0, size.height / edgeAnchor);
    var firstControlPoint = Offset(size.width / 2, size.height / bezierAnchor);
    var firstEndPoint = Offset(size.width, size.height / edgeAnchor);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height / edgeAnchor);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
