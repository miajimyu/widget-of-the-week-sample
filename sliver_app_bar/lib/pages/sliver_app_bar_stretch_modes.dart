import 'package:flutter/material.dart';

class SliverAppBarStretchModesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _expandedImage = FlutterLogo();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('SliverAppBar StretchModes'),
            expandedHeight: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('zoom & blur & fade title'), // Point to check
              background: _expandedImage,
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground, // Point to check
                StretchMode.blurBackground, // Point to check
                StretchMode.fadeTitle, // Point to check
              ],
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
