import 'package:flutter/material.dart';

class Sample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: 100,
              ),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
