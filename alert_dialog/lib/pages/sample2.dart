import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 title and image'),
      ),
      body: CupertinoAlertDialog(
        title: Text('Accept?'),
        content: Image.asset('images/kirin.png'),
      ),
    );
  }
}
