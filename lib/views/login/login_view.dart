import 'package:flutter/material.dart';
import 'package:chedraui_flutter/utils/ui_data.dart';
import 'package:chedraui_flutter/widgets/logo_widget.dart';
import 'package:chedraui_flutter/widgets/gradient_button.dart';
import 'package:chedraui_flutter/widgets/border_textfield.dart';

class LoginView extends StatefulWidget {
  final Widget child;

  LoginView({Key key, this.child}) : super(key: key);

  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //          Row flex sizes
  final _rowLogo = 4;
  final _rowTextFieldUser = 1;
  final _rowTextFieldsPass = 1;
  final _rowTextFieldsFingerPrint = 1;
  final _rowTextFieldsButtonLogin = 2;
  final _rowTextFieldsBottomItems = 4;
  // Color bgGradientTopLightBlue = HexColor('#0897FF');
  // Color bgGradientBottomBlue = HexColor('#0064FF');
  // Color whiteText = Colors.white;
  // Color txbBlackText = Colors.black;
  // Color chedrauiColor = HexColor('#F28524');

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
                    UIData.bgGradientTopLightBlue,
                    UIData.bgGradientBottomBlue,
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
                      padding: const EdgeInsets.all(24.0),
                    ),
                    flex: _rowLogo,
                  ),
                  Expanded(
                    child: new BorderedTextField(
                        text: "E-Mail", textObscured: false
                        // dIcon: const Icon(
                        //   Icons.accessibility,
                        //   color: Colors.black,
                        // ),
                        ),
                    flex: _rowTextFieldsPass,
                  ),
                  Expanded(
                    child: new BorderedTextField(
                      text: "Password",
                      textObscured: true,
                      // dIcon: Icon(Icons.visibility),
                      // dIcon: const Icon(
                      //   Icons.accessibility,
                      //   color: Colors.black,
                      // ),
                    ),
                    flex: _rowTextFieldsPass,
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
                      child: new GradientButton(
                          text: "Ingresar", onPressed: () {}),
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
                                      color: UIData.whiteText, size: 70.0),
                                  decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0.0, 20.0),
                                        blurRadius: 30.0,
                                      ),
                                    ],
                                  ),
                                ),
                                new Text(
                                  "Cuenta",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: UIData.whiteText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                          new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: new Icon(Icons.account_circle,
                                      color: UIData.whiteText, size: 70.0),
                                  decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0.0, 20.0),
                                        blurRadius: 30.0,
                                      ),
                                    ],
                                  ),
                                ),
                                new Text(
                                  "Invitado",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: UIData.whiteText,
                                    fontWeight: FontWeight.bold,
                                  ),
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





//////////////////////////////////////////////////////////////////////////////////////

