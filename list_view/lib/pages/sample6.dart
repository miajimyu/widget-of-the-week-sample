import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample6 ListView.separated()'),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => Text('Item $index'),
        separatorBuilder: (_, index) => Divider(),
        itemCount: 10,
      ),
    );
  }
}