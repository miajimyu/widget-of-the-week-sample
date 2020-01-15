import 'dart:math';

import 'package:flutter/material.dart';

class SineCurveAnimation extends StatefulWidget {
  @override
  _SineCurveAnimationState createState() => _SineCurveAnimationState();
}

class _SineCurveAnimationState extends State<SineCurveAnimation> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Sine Curve'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _isBig ? 300 : 100,
          duration: const Duration(seconds: 1),
          child: Image.asset('images/kirin.png'),
          curve: const SineCurve(count: 2),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isBig = !_isBig;
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}

class SineCurve extends Curve {
  const SineCurve({this.count = 1});

  final double count;

  @override
  double transformInternal(double t) {
    return sin(count * pi * t) * 0.5 + 0.5;
  }
}
