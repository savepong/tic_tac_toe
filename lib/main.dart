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
  static const int NONE = 0;
  static const int VALUE_X = 1;
  static const int VALUE_O = 2;

  List<List<int>> channelStatus = [
    [VALUE_X, NONE, VALUE_X],
    [NONE, VALUE_X, NONE],
    [VALUE_X, NONE, VALUE_X],
  ];

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
                    buildChannel(RADIUS_CORNER, 0, 0, 0, channelStatus[0][0]),
                    buildChannel(0, 0, 0, 0, channelStatus[0][1]),
                    buildChannel(0, RADIUS_CORNER, 0, 0, channelStatus[0][2]),
                  ],
                ),
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(0, 0, 0, 0, channelStatus[1][0]),
                    buildChannel(0, 0, 0, 0, channelStatus[1][1]),
                    buildChannel(0, 0, 0, 0, channelStatus[1][2]),
                  ],
                ),
                Row(mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildChannel(0, 0, RADIUS_CORNER, 0, channelStatus[2][0]),
                    buildChannel(0, 0, 0, 0, channelStatus[2][1]),
                    buildChannel(0, 0, 0, RADIUS_CORNER, channelStatus[2][2]),
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

Container buildChannel(
    double tlRadius,
    double trRadius,
    double blRadius,
    double brRadius,
    int status
  ) => 
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
    ),
    child: Icon(getIconFromStatus(status), size: 60, color: Colors.green[800])
  );

  IconData getIconFromStatus(int status) {
    if (status == 1) {
      return Icons.close;
    } else if (status == 2) {
      return Icons.radio_button_unchecked;
    }
    return null;
  }

  Color colorBorder = Colors.green[600];
  Color colorBackground = Colors.green[100];
  Color colorBackgroundChannelNone = Colors.green[200];
  Color colorBackgroundChannelValueX = Colors.green[400];
  Color colorBackgroundChannelValueO = Colors.green[400];
  Color colorChannelIcon = Colors.green[800];


  Color getBackgroundChannelFromStatus(int status) {
    if (status == 1) {
      return colorBackgroundChannelValueX;
    } else if (status == 2) {
      return colorBackgroundChannelValueO;
    }
    return colorBackgroundChannelNone;
  }