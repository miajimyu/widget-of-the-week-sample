import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1 GridView.count()';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 crossAxisCount: $count'),
        actions: const [
          Icon(Icons.wifi),
          Icon(Icons.battery_full),
        ],
      ),
      body: GridView.count(
        crossAxisCount: count,
        children: [
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
