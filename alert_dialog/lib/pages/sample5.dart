import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample5 elevation, color, shape'),
      ),
      body: AlertDialog(
        title: const Text('Accept?'),
        content: const Text('Do you accept?'),
        actions: <Widget>[
          FlatButton(child: const Text('No'), onPressed: () {}),
          FlatButton(child: const Text('Yes'), onPressed: () {}),
        ],
        elevation: 24,
        backgroundColor: Colors.amber,
        shape: const StadiumBorder(),
      ),
    );
  }
}
