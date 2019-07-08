import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 (Text)'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(flex: 1),
            MyRect(
              child: Text('Text'),
            ),
            Spacer(flex: 1),
            MyRect(
              child: FittedBox(
                child: Text('Text in FittedBox'),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

class MyRect extends StatelessWidget {
  final child;

  MyRect({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      width: 200.0,
      height: 100.0,
      child: child,
    );
  }
}
