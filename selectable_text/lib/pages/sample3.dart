import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 Width&Color&Radius'),
      ),
      body: Center(
        child: SelectableText(
          'my selectable text',
          style: Theme.of(context).textTheme.display1,
          showCursor: true,
          cursorWidth: 5,
          cursorColor: Colors.green,
          cursorRadius: Radius.circular(5),
        ),
      ),
    );
  }
}
