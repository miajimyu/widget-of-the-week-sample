import 'dart:math' as math;

import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView (Without LimitedBox)'),
      ),
      body: ListView(
        children: [
          for (var i = 0; i < 10; i++)
            Container(
              color: randomColor(),
            ),
        ],
      ),
    );
  }

  Color randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1);
  }
}
