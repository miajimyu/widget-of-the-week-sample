import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 (Button)'),
      ),
      body: Center(
        child: IconButton(
          iconSize: 100,
          icon: Icon(Icons.high_quality),
          tooltip: 'High quality',
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        tooltip: 'Add',
      ),
    );
  }
}
