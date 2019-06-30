import 'dart:math' as math;

import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2'),
      ),
      body: Center(
        // https://api.flutter.dev/flutter/widgets/Transform-class.html
        child: Container(
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}
