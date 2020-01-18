import 'package:flutter/material.dart';

class SliverGridCountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverGrid.count()'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 4,
            children: <Widget>[
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
          )
        ],
      ),
    );
  }
}
