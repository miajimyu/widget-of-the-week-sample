import 'package:flutter/material.dart';

class Sample5Page extends StatefulWidget {
  static const String id = 'sample5';
  static const String title = 'Sample5 GridView.extent()';

  @override
  _Sample5PageState createState() => _Sample5PageState();
}

class _Sample5PageState extends State<Sample5Page> {
  double extent = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample5 Extent: $extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: extent,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            extent += 100;
          });
        },
      ),
    );
  }
}
