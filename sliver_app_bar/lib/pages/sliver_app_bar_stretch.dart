import 'package:flutter/material.dart';

class SliverAppBarStretchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _expandedImage = FlutterLogo();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('SliverAppBar Stretch'),
            expandedHeight: 200,
            stretch: true, // Point to check
            flexibleSpace: FlexibleSpaceBar(
              background: _expandedImage,
            ),
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
