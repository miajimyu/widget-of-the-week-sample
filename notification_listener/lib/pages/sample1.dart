import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  final List<String> items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          print('notification: $notification');
          return true;
        },
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item.toString()),
            );
          },
        ),
      ),
    );
  }
}
