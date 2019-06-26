import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 (Alignment)'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(flex: 1),
            MyRect(
              child: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                  ],
                ),
              ),
            ),
            Text('Alignment.centerLeft'),
            Spacer(flex: 1),
            MyRect(
              child: FittedBox(
                alignment: Alignment.centerRight,
                fit: BoxFit.contain,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                  ],
                ),
              ),
            ),
            Text('Alignment.centerRight'),
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
