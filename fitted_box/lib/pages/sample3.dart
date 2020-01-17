import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 (Text)'),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
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
