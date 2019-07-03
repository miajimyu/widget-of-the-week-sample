import 'package:flutter/material.dart';

class FlutterInFocusExample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example1 (Flutter In Focus)'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(75.0),
          color: Colors.blue,
          width: 300,
          height: 300,
          child: customPaint,
        ),
      ),
    );
  }
}

final customPaint = CustomPaint(
  painter: MyPainter(),
  child: Container(),
);

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(120, 70), 50, Paint());
    canvas.drawLine(Offset(0, 150), Offset(120, 150), Paint());
    canvas.drawRect(Rect.fromPoints(Offset.zero, Offset(50, 100)), Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}