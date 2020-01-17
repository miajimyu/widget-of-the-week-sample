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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Win a Dash',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30,
              ),
            ),
            const Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.lightBlue,
              ),
              width: 200,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
