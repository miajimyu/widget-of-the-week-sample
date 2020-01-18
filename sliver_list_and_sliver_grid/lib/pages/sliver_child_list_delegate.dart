import 'package:flutter/material.dart';

class SliverChildListDelegatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverChildListDelegate'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              for (var i = 0; i < 6; i++)
                Container(
                  height: 150,
                  color: i % 2 == 0 ? Colors.white : Colors.grey[300],
                  child: Center(
                    child: Text('$i', style: const TextStyle(fontSize: 50)),
                  ),
                ),
            ]),
          ),
        ],
      ),
    );
  }
}
