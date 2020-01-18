import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: List.generate(
            100,
            (i) => Text(
              'This is some text',
              style: TextStyle(backgroundColor: Colors.amber),
            ),
          ),
        ),
      ),
    );
  }
}
