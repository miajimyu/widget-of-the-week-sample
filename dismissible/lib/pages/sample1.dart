import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myString = 'Hello!';
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Dismissible(
        child: ListTile(
          title: Text(myString),
        ),
        background: Container(
          color: Colors.green,
        ),
        key: ValueKey(myString),
      ),
    );
  }
}
