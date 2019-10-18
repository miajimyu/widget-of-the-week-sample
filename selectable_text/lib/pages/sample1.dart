import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 color'),
      ),
      body: Center(
        child: SelectableText(
          'my selectable text',
          style: TextStyle(
            color: Colors.blue,
            fontSize: Theme.of(context).textTheme.display1.fontSize,
          ),
        ),
      ),
    );
  }
}
