import 'package:flutter/material.dart';

class FlutterInFocusExample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example1 (Flutter In Focus)'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(75),
          color: Colors.blue,
          width: 300,
          height: 300,
          child: customPaint,
        ),
      ),
    );
  }
}

final CustomPaint customPaint = CustomPaint(
  painter: MyPainter(),
  child: Container(),
);

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas
      ..drawCircle(const Offset(120, 70), 50, Paint())
      ..drawLine(const Offset(0, 150), const Offset(120, 150), Paint())
      ..drawRect(Rect.fromPoints(Offset.zero, const Offset(50, 100)), Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
