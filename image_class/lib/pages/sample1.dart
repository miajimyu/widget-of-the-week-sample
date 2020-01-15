import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 Image.asset()'),
      ),
      body: Center(
        child: Image.asset('assets/images/kirin.png'),
      ),
    );
  }
}
