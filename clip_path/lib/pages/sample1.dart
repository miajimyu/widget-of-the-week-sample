import 'dart:math';

import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: Center(
        child: ClipPath(
          child: const BlueBox(200),
          clipper: StarClipper(),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
      child: SizedBox(
        height: size,
        width: size,
      ),
    );
  }
}

class StarClipper extends CustomClipper<Path> {
  static const starPoints = 5;

  @override
  Path getClip(Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    final path = Path();

    final radius = size.width / 2;
    final inner = radius / 2;
    final step = pi / starPoints;
    var rotation = pi / 2 * 3;

    path.lineTo(centerX, centerY - radius);

    for (var i = 0; i < starPoints; i++) {
      var x = centerX + cos(rotation) * radius;
      var y = centerY + sin(rotation) * radius;
      path.lineTo(x, y);
      rotation += step;

      x = centerX + cos(rotation) * inner;
      y = centerY + sin(rotation) * inner;
      path.lineTo(x, y);
      rotation += step;
    }

    path
      ..lineTo(centerX, centerY - radius)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
