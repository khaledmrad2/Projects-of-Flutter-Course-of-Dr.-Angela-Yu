import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Magic 8 Ball !"),
          centerTitle: true,
        ),
        body: ball(),
      ),
    ));

class ball extends StatefulWidget {
  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int state = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () => Change(),
          child: Image.asset('images/ball$state.png'),
        ),
      ),
    );
  }

  void Change() {
    setState(
      () {
        state = Random().nextInt(5) + 1;
      },
    );
  }
}
