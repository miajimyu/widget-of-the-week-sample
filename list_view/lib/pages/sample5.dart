import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample5 ListView.builder()'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => Text('Item $index'),
      ),
    );
  }
}
