import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 (flex: 2, 1)'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ColorBox(),
            Spacer(flex: 2),
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
