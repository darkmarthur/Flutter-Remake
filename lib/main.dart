import 'package:flutter/material.dart';
import 'package:chedraui_flutter/utils/ui_data.dart';

import 'package:chedraui_flutter/views/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UIData.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway'
      ),
      // home: LoginPage(),
      home: LoginView(),
      routes: <String, WidgetBuilder>{
        UIData.loginOneRoute: (BuildContext context) => LoginView(),
        // UIData.homeRoute: (BuildContext context) => HomePage(),
      },
    );
  }
}