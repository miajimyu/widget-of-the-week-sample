import 'dart:async';

import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3 Determinate progress';

  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  double progress = 0;
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
        title: const Text(Sample3Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircularProgressIndicator(value: progress),
          LinearProgressIndicator(value: progress),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () {
          setState(() {
            progress = 0;
          });
          _timer?.cancel();
          _timer = Timer.periodic(
            const Duration(milliseconds: 20),
            (timer) {
              setState(() {
                progress += 0.01;
              });
              if (progress >= 1.0) {
                _timer.cancel();
              }
            },
          );
        },
      ),
    );
  }
}
