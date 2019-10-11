import 'package:flutter/material.dart';

class Sample8Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample8 constraints'),
      ),
      body: Container(
        child: Text('Less Boring'),
        color: Colors.blue,
        alignment: Alignment.center,
        constraints: BoxConstraints.tightForFinite(
          width: 200,
        ),
      ),
    );
  }
}
