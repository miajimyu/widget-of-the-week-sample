import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample6 SelectableText.rich()'),
      ),
      body: Center(
        child: SelectableText.rich(
          TextSpan(
            text: 'Hello',
            children: <TextSpan>[
              TextSpan(
                text: ' beautiful ',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: 'world',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
