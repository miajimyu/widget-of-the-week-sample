import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 actions'),
      ),
      body: CupertinoAlertDialog(
        title: const Text('Accept?'),
        content: const Text('Do you accept?'),
        actions: <Widget>[
          CupertinoDialogAction(child: const Text('No'), onPressed: () {}),
          CupertinoDialogAction(child: const Text('Yes'), onPressed: () {}),
        ],
      ),
    );
  }
}
