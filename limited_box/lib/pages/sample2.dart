import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container (With LimitedBox)'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: LimitedBox(
            maxHeight: 150,
            maxWidth: 150,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
