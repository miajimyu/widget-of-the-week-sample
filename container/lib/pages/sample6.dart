import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample6 alignment'),
      ),
      body: Container(
        child: Text('Less Boring'),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
    );
  }
}
