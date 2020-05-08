import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

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
  int ldn = 1;
  int rdn = 1;
  void _ChangeState() {
    setState(() {
      ldn = Random().nextInt(6) + 1;
      rdn = Random().nextInt(6) + 1;
      print("called function");
      
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: _ChangeState,
                child: Image.asset('images/dice$ldn.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: _ChangeState,
                  child: Image.asset('images/dice$rdn.png')),
            )
          ],
        ),
      ),
    );
  }
}
