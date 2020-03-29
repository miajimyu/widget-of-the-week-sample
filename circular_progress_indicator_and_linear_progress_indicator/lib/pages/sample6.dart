import 'package:flutter/material.dart';

class Sample6Page extends StatefulWidget {
  static const String id = 'sample6';
  static const String title = 'Sample6 Set backgroundColor';

  @override
  _Sample6PageState createState() => _Sample6PageState();
}

class _Sample6PageState extends State<Sample6Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample6Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircularProgressIndicator(backgroundColor: Colors.grey),
          LinearProgressIndicator(backgroundColor: Colors.grey),
        ],
      ),
    );
  }
}
