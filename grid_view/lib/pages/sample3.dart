import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3 GridView.builder()';

  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample3Page.title),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.amber[100 * (index % 9)],
            child: Text('item $index'),
          );
        },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 4,
        ),
      ),
    );
  }
}
