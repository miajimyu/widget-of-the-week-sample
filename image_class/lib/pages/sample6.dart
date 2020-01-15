import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample6 color, colorBlendMode'),
      ),
      body: Center(
          child: Image.asset(
        'assets/images/kirin.png',
        color: Colors.amber,
        colorBlendMode: BlendMode.darken,
      )),
    );
  }
}
