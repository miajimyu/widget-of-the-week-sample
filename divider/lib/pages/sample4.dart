import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  static const String id = 'sample4';
  static const String title = 'Sample4 ListTile.divideTiles()';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample4Page.title),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: const [
            ListTile(title: Text('1')),
            ListTile(title: Text('2')),
            ListTile(title: Text('3')),
            ListTile(title: Text('4')),
            ListTile(title: Text('5')),
          ],
        ).toList(),
      ),
    );
  }
}
