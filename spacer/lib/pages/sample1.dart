import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 (flex: 1, 1)'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ColorBox(),
            Spacer(),
            ColorBox(),
            Spacer(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        color: Colors.blue,
      ),
      width: 100,
      height: 100,
    );
  }
}
