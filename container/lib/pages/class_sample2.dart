import 'package:flutter/material.dart';

class ClassSample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample2'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text('Hello World',
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(0.1),
      ),
    );
  }
}
