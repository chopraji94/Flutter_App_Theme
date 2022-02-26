import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My app",
      home: HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        accentColor: Colors.green
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Welcome me";
  void _changeData() {
    setState(() {
      if (myText.startsWith("W")) {
        myText = "Hello everyone";
      } else {
        myText = "Welcome me";
      }
    });
  }

  Widget _homeBody() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText),
            new ElevatedButton(
              onPressed: _changeData,
              child: Text('Click Me'),
              style: new ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Home Page"),
      ),
      body: _homeBody(),
    );
  }
}
