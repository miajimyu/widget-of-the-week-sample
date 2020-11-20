import 'package:flutter/material.dart';

class SliverAppBarOnStretchTriggerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _expandedImage = FlutterLogo();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text('SliverAppBar OnStretchTrigger'),
            expandedHeight: 200,
            stretch: true,
            onStretchTrigger: () async {
              print('onStretchTrigger');
            }, // Point to check
            flexibleSpace: const FlexibleSpaceBar(
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
