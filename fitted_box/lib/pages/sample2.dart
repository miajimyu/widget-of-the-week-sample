import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 (Alignment)'),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Spacer(flex: 1),
            MyRect(
              child: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
                child: FlutterLogo(),
              ),
            ),
            Text('Alignment.centerLeft'),
            Spacer(flex: 1),
            MyRect(
              child: FittedBox(
                alignment: Alignment.centerRight,
                fit: BoxFit.contain,
                child: FlutterLogo(),
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
