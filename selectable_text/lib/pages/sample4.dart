import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample4 toolbarOptions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SelectableText(
              'my selectable text',
              style: Theme.of(context).textTheme.display1,
              toolbarOptions: ToolbarOptions(copy: true),
            ),
            SelectableText(
              'my selectable text',
              style: Theme.of(context).textTheme.display1,
              toolbarOptions: ToolbarOptions(),
            ),
          ],
        ),
      ),
    );
  }
}
