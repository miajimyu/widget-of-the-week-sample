import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(-0.75, -0.75),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(0.00, 0.00),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(1.00, 0.50),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(0.60, -0.80),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(-0.40, 0.90),
                child: Text('Hello!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
