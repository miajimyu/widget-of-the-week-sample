import 'package:flutter/material.dart';

class Sample8Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample8 constraints'),
      ),
      body: Container(
        child: const Text('Less Boring'),
        color: Colors.blue,
        alignment: Alignment.center,
        constraints: const BoxConstraints.tightForFinite(
          width: 200,
        ),
      ),
    );
  }
}
