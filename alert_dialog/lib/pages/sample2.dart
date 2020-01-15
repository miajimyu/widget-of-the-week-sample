import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 title and image'),
      ),
      body: CupertinoAlertDialog(
        title: const Text('Accept?'),
        content: Image.asset('images/kirin.png'),
      ),
    );
  }
}
