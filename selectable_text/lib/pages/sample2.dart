import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 showCursor'),
      ),
      body: Center(
        child: SelectableText(
          'my selectable text',
          style: Theme.of(context).textTheme.display1,
          showCursor: true,
        ),
      ),
    );
  }
}
