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
  static const double RADIUS_CORNER = 12;

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
                    buildChannel(RADIUS_CORNER, 0, 0, 0),
                    buildChannel(0, 0, 0, 0),
                    buildChannel(0, RADIUS_CORNER, 0, 0),
                  ],
                ),
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(0, 0, 0, 0),
                    buildChannel(0, 0, 0, 0),
                    buildChannel(0, 0, 0, 0),
                  ],
                ),
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(0, 0, RADIUS_CORNER, 0),
                    buildChannel(0, 0, 0, 0),
                    buildChannel(0, 0, 0, RADIUS_CORNER),
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

Container buildChannel(double tlRadius,
  double trRadius,
  double blRadius,
  double brRadius) => 
  Container(
    margin: EdgeInsets.all(2), 
    width: 100, 
    height: 100, 
    decoration: BoxDecoration(
      color: Colors.green[100],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(tlRadius),
        topRight: Radius.circular(trRadius),
        bottomLeft: Radius.circular(blRadius),
        bottomRight: Radius.circular(brRadius)
      )
    )
  );