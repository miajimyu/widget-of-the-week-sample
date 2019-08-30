import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 ConstrainedBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 200,
              ),
              child: Text(
                'Delicious Candy',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 100,
              ),
              child: RaisedButton(
                child: Text('Tap Me!'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
