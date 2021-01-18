import 'dart:ui';

import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 ImageFilter.blur()'),
      ),
      body: Center(
        // Point to check
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 9),
          child: Image.asset('images/kirin.png'),
        ),
      ),
    );
  }
}
