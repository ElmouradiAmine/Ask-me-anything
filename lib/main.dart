import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBall = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: FlatButton(
            onPressed: _updateBall,
            child: Image.asset('images/ball$currentBall.png')),
      ),
    );
  }


  void _updateBall(){
    setState(() {
      currentBall = Random().nextInt(5) + 1;
    });
  }
}

