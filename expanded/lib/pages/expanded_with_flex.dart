import 'package:flutter/material.dart';

class ExpandedWithFlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded with flex'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: const Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: const Text('Expanded (2)'),
                color: Colors.yellow,
              ),
            ),
            Container(
              child: const Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: const Text('Expanded (1)'),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
