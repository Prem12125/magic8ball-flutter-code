import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 92, 218),
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.pink,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int magicBall = 1;
  Random random = Random();
  void magicRollBall() {
    setState(() {
      magicBall = random.nextInt(5) + 1;
    });
    print("Number of Image $magicBall");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                magicRollBall();
              },
              child: Image(
                image: AssetImage('images/ball$magicBall.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
