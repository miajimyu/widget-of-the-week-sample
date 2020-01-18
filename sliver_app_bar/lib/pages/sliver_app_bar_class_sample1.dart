import 'package:flutter/material.dart';

class SliverAppBarSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Available seats'),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
