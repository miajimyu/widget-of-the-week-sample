import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 ConstrainedBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 200,
              ),
              child: const Text(
                'Delicious Candy',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100,
              ),
              child: RaisedButton(
                child: const Text('Tap Me!'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
