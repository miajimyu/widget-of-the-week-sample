import 'dart:ui';

import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 ImageFilter.matrix()'),
      ),
      body: Center(
        child: ImageFiltered(
          // Point to check
          imageFilter: ImageFilter.matrix(
            Matrix4.rotationZ(0.2).storage,
          ),
          child: Image.asset('images/kirin.png'),
        ),
      ),
    );
  }
}
