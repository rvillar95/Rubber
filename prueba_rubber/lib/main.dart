import 'package:prueba_rubber/dismissable.dart';
import 'package:prueba_rubber/scroll.dart';
import 'package:prueba_rubber/spring.dart';
import 'package:flutter/material.dart';
import 'package:prueba_rubber/default.dart';
import 'package:prueba_rubber/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.cyan,
      ),
      home: HomePage(title: "Home",),
    );
  }
}


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title,style: TextStyle(color: Colors.cyan[900]),),
        ),
        body: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("Default"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DefaultPage()),
                );
              },
            ),
            RaisedButton(
              child: Text("Menu"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
            ),
            RaisedButton(
              child: Text("Spring settings"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SpringPage()),
                );
              },
            ),
            RaisedButton(
              child: Text("Scrolling"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScrollPage()),
                );
              },
            ),
            RaisedButton(
              child: Text("Dismissable"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DismissablePage()),
                );
              },
            ),
          ],
        ),
    );
  }
}