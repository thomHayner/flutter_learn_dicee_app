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

class DicePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var leftDice = 1;
    var random = Random();

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: () {
                print('Left button got pressed');
                leftDice = random.nextInt(6) + 1;
                print(leftDice);
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice2.png'),
              onPressed: () {
                print('Right button got pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
