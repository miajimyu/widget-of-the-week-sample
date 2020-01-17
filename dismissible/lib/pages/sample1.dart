import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const myString = 'Hello!';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Dismissible(
        child: const ListTile(
          title: Text(myString),
        ),
        background: Container(
          color: Colors.green,
        ),
        key: const ValueKey(myString),
      ),
    );
  }
}
