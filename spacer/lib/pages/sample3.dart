import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 (flex: 1, 3, 9)'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ColorBox(),
            Spacer(),
            ColorBox(),
            Spacer(flex: 3),
            ColorBox(),
            Spacer(flex: 9),
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
      width: 50,
      height: 50,
    );
  }
}
