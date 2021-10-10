import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatefulWidget {
  // const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
 int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: FlatButton
            (onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
          },
            child: Image
              (image:
            AssetImage('image/ball$ballNumber.png'),
            ),
          ),
        ),

      ),
    );
  }
}

