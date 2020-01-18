import 'package:flutter/material.dart';

class SliverGridExtentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverGrid.extent()'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.extent(
            maxCrossAxisExtent: 90,
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
