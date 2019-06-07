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
                    randomNumberLeft = getRandomNumberLessThanSix();
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
                  randomNumberRight = getRandomNumberLessThanSix();
                });
              },
              child: Image.asset('images/dice$randomNumberRight.png'),
            ),
          ),
        ],
      ),
    );
  }

  int getRandomNumberLessThanSix() {
    Random rnd;
    int min = 1;
    int max = 6;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    return r;
  }
}
