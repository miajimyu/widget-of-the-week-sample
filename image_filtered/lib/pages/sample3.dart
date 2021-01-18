import 'dart:ui';

import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3';

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 2),
      child: MyApp(), // Point to check
    );
  }
}

class MyApp extends StatelessWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 Not just for images'),
      ),
      body: Center(
        child: Image.asset('images/kirin.png'),
      ),
    );
  }
}
