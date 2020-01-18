import 'package:flutter/material.dart';

class WithoutSafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          100,
          (i) => Text(
            'This is some text',
            style: TextStyle(backgroundColor: Colors.amber),
          ),
        ),
      ),
    );
  }
}
