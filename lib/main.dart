import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceState(),
      ),
    ),
  );
}

class DiceState extends StatefulWidget {
  @override
  _DiceStateState createState() => _DiceStateState();
}

class _DiceStateState extends State<DiceState> {
  var leftNumber = 1;
  var rigthNumber = 1;

  void diceRandom() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rigthNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceRandom();
              },
              child: Image.asset('images/dice$leftNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceRandom();
              },
              child: Image.asset('images/dice$rigthNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//997592182
