import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Show a SnackBar'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: const <Widget>[
                    Icon(Icons.thumb_up),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text('Hello!'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
