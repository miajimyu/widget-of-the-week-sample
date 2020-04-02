import 'dart:async';

import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 Indeterminate progress';

  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  bool isInProgress = false;
  Timer _timer;

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          isInProgress ? const CircularProgressIndicator() : Container(),
          isInProgress ? const LinearProgressIndicator() : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sync),
        onPressed: () {
          setState(() {
            isInProgress = true;
          });
          _timer?.cancel();
          _timer = Timer.periodic(
            const Duration(seconds: 2),
            (timer) => setState(() {
              isInProgress = false;
            }),
          );
        },
      ),
    );
  }
}
