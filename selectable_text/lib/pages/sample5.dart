import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample5 onTap'),
      ),
      body: Center(
        child: SelectableText(
          'my selectable text',
          style: Theme.of(context).textTheme.display1,
          onTap: () => print('that tickles!'),
        ),
      ),
    );
  }
}
