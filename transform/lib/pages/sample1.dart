import 'dart:math';

import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.menu, size: 50.0),
            Transform.rotate(
              angle: pi / 4,
              child: Icon(Icons.menu, size: 50.0),
            ),
            Transform.scale(
              scale: 1.5,
              child: Icon(Icons.menu, size: 50.0),
            ),
            Transform.translate(
              offset: Offset(50, 50),
              child: Icon(Icons.menu, size: 50.0),
            ),
            Transform(
              transform: Matrix4.skewX(0.3),
              child: Icon(Icons.menu, size: 50.0),
            ),
            Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateX(0.6),
              alignment: FractionalOffset.center,
              child: Icon(Icons.menu, size: 50.0),
            ),
          ],
        ),
      ),
    );
  }
}
