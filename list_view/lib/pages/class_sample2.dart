import 'package:flutter/material.dart';

class ClassSample2Page extends StatelessWidget {
  final List<String> entries = ['A', 'B', 'C'];
  final List<int> colorCodes = [600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample2 ListView.builder()'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        },
      ),
    );
  }
}
