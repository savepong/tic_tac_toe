import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "XO Game",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'XO Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Container(constraints: BoxConstraints.expand(),
        color: Colors.green[100],
        child: Center(
          child: Container(color: Colors.green[400],
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(),
                    buildChannel(),
                    buildChannel(),
                  ],
                ),
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(),
                    buildChannel(),
                    buildChannel(),
                  ],
                ),
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(),
                    buildChannel(),
                    buildChannel(),
                  ],
                ),
              ],
            )
          )
        )
      )
    );
  }
}

Container buildChannel() => Container(margin: EdgeInsets.all(4), width: 100, height: 100, color: Colors.green[100]);