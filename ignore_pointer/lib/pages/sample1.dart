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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Default
            IgnorePointer(
              child: RaisedButton(
                child: Text(
                  'IgnorePointer Default',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),

            // ignoring: true
            IgnorePointer(
              ignoring: true,
              child: RaisedButton(
                child: Text(
                  'ignoring ture',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),

            // ignoring: false
            IgnorePointer(
              ignoring: false,
              child: RaisedButton(
                child: Text(
                  'ignoring false',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
