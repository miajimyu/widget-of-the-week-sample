import 'package:flutter/material.dart';

class Sample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Row Sample'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
