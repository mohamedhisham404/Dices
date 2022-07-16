import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  int LeftDiceNumber = 1;
  // ignore: non_constant_identifier_names
  int RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Image.asset('images/dice$LeftDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      LeftDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
              //Get students to create the second die as a challenge
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Image.asset('images/dice$RightDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      RightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
