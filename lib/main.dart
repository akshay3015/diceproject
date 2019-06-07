import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumberLeft = 1;
  int randomNumberRight = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    randomNumberLeft = getRandomNumberLessThanSeven();
                  },
                );
              },
              child: Image.asset('images/dice$randomNumberLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  print('right button pressed by user');
                  randomNumberRight = getRandomNumberLessThanSeven();
                });
              },
              child: Image.asset('images/dice$randomNumberRight.png'),
            ),
          ),
        ],
      ),
    );
  }

  int getRandomNumberLessThanSeven() {
    return Random().nextInt(6) + 1;
  }
}
