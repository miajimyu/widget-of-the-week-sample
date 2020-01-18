import 'dart:math' as math;

import 'package:flutter/material.dart';

class FlutterInFocusExample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example3 (Flutter In Focus)'),
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
    final radius = math.min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    // Draw the body
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);
    // Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    canvas
      ..drawArc(Rect.fromCircle(center: center, radius: radius / 2), 0, math.pi,
          false, smilePaint)
      // Draw the eyes
      ..drawCircle(
          Offset(center.dx - radius / 2, center.dy - radius / 2), 10, Paint())
      ..drawCircle(
          Offset(center.dx + radius / 2, center.dy - radius / 2), 10, Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
