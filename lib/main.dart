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
      home: MyHomePage(),
      // home: LoginView(),
      routes: <String, WidgetBuilder>{
        UIData.loginOneRoute: (BuildContext context) => LoginView(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  // final Widget child;

  // MyHomePage({Key key, this.child}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: TextField(
              controller: _textController,
            ),
          ),
          ListTile(
            title: RaisedButton(
              child: Text("next"),
              onPressed: () {
                var route =
                    new MaterialPageRoute(builder: (BuildContext context) =>
                  new NextPage(value: _textController.text)
                );
                Navigator.of(context).push(route);
              },
            ),
          )
        ],
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final String value;
  NextPage({Key key, this.value}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Text("${widget.value}"),
    );
  }
}
