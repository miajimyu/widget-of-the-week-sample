import 'package:flutter/material.dart';

class SliverAppBarFloatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            floating: true,
            expandedHeight: 200,
            title: Text('SliverAppBar Floating'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                for (var i = 0; i < 6; i++)
                  Container(
                    height: 150,
                    color: i.isEven ? Colors.white : Colors.grey[300],
                    child: Center(
                      child: Text('$i', style: const TextStyle(fontSize: 50)),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
