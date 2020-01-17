import 'package:flutter/material.dart';

class Expanded1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded1'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: const Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              child: Container(
                child: const Text('Expanded'),
                color: Colors.yellow,
              ),
            ),
            Container(
              child: const Text('Normal'),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
