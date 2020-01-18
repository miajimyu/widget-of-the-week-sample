import 'dart:math' as math;

import 'package:flutter/material.dart';

class Sample4Page extends StatefulWidget {
  @override
  _Sample4PageState createState() => _Sample4PageState();
}

class _Sample4PageState extends State<Sample4Page>
    with SingleTickerProviderStateMixin {
  ValueNotifier<AnimationController> myAnimation;

  @override
  void initState() {
    myAnimation = ValueNotifier<AnimationController>(
      AnimationController(
        duration: const Duration(seconds: 10),
        vsync: this,
      )..repeat(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 Animation'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: myAnimation.value,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          builder: (context, dynamic count, child) {
            return Transform.rotate(
              angle: myAnimation.value.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
