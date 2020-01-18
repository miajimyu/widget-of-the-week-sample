import 'package:flutter/material.dart';

class SliverChildBuilderDelegatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverChildBuilderDelegate'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 150,
                color: index % 2 == 0 ? Colors.white : Colors.grey[300],
                child: Center(
                  child: Text('$index', style: const TextStyle(fontSize: 50)),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
