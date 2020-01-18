import 'package:flutter/material.dart';

class SliverAppBarSnapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            snap: true,
            // The property snap can only be set to true,
            // if floating is also true.
            floating: true,
            expandedHeight: 200,
            title: Text('SliverAppBar Snap & Floating'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                for (var i = 0; i < 6; i++)
                  Container(
                    height: 150,
                    color: i % 2 == 0 ? Colors.white : Colors.grey[300],
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
