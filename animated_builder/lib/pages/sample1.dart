import 'dart:math';

import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: AnimatedWidget(),
    );
  }
}

class AnimatedWidget extends StatefulWidget {
  @override
  _AnimatedWidgetState createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animation = Tween(begin: 0, end: 2 * pi).animate(controller);
    return AnimatedBuilder(
      animation: animation,
      child: FlutterLogo(
        size: 100,
      ),
      builder: (context, child) {
        return Transform.rotate(
          angle: animation.value,
          child: child,
        );
      },
    );
  }
}
