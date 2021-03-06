import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CupertinoActivityIndicator(),
            CupertinoActivityIndicator(
              animating: false,
              radius: 50,
            ),
          ],
        ),
      ),
    );
  }
}
