import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 (BoxFit)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            MyRect(
              child: FittedBox(
                fit: BoxFit.contain,
                child: FlutterLogo(),
              ),
            ),
            Text('BoxFit.contain'),
            MyRect(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: FlutterLogo(),
              ),
            ),
            Text('BoxFit.fitWidth'),
            MyRect(
              child: FittedBox(
                fit: BoxFit.fill,
                child: FlutterLogo(),
              ),
            ),
            Text('BoxFit.fill'),
            MyRect(
              child: FittedBox(
                fit: BoxFit.none,
                child: FlutterLogo(),
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
  const MyRect({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      width: 200,
      height: 100,
      child: child,
    );
  }
}
