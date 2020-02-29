// https://api.flutter.dev/flutter/widgets/ShaderMask-class.html#widgets.ShaderMask.1

import 'package:flutter/material.dart';

class ClassSample1Page extends StatelessWidget {
  static const String id = 'class_sample1';
  static const String title = 'ClassSample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      backgroundColor: Colors.black,
      body: ShaderMask(
        blendMode: BlendMode.srcATop,
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1,
            colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: const Text(
          'I’m burning the memories',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
