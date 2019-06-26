import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 (BoxFit)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MyRect(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                  ],
                ),
              ),
            ),
            Text('BoxFit.contain'),
            MyRect(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                  ],
                ),
              ),
            ),
            Text('BoxFit.fitWidth'),
            MyRect(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                  ],
                ),
              ),
            ),
            Text('BoxFit.fill'),
            MyRect(
              child: FittedBox(
                fit: BoxFit.none,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(),
                  ],
                ),
              ),
            ),
            Text('BoxFit.none'),
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
