import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 title and content'),
      ),
      body: const CupertinoAlertDialog(
        title: Text('Accept?'),
        content: Text('Do you accept?'),
      ),
    );
  }
}
