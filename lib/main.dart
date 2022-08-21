import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatefulWidget {
  GameApp({Key? key}) : super(key: key);

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  int top = 2;
  int bottom = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.4,
                colors: [
                  Color.fromARGB(255, 214, 156, 29),
                  Color.fromARGB(255, 255, 234, 0),
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                  height: 100.0,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3) + 1;
                      bottom = Random().nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    'Start ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
                Image(
                  image: AssetImage('images/$bottom.png'),
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _getAppBar() {
  return AppBar(
    elevation: 1,
    centerTitle: true,
    title: Text(
      'Rock  , Paper , Scissors',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
    backgroundColor: Color.fromARGB(255, 255, 234, 0),
  );
}
