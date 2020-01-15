import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 AlertDialog'),
      ),
      body: AlertDialog(
        title: const Text('Accept?'),
        content: const Text('Do you accept?'),
        actions: <Widget>[
          FlatButton(child: const Text('No'), onPressed: () {}),
          FlatButton(child: const Text('Yes'), onPressed: () {}),
        ],
      ),
    );
  }
}
