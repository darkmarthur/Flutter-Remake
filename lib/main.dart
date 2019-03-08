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
        brightness: Brightness.light,
        primaryColor: UIData.chedrauiColor,
        accentColor: UIData.chedrauiColor,
        hintColor: UIData.chedrauiColor,
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: LoginView(),
      routes: <String, WidgetBuilder>{
        UIData.loginOneRoute: (BuildContext context) => LoginView(),
      },
    );
  }
}
