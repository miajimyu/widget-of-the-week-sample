import 'package:animated_container/pages/border.dart';
import 'package:animated_container/pages/border_raddii.dart';
import 'package:animated_container/pages/color.dart';
import 'package:animated_container/pages/height.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/height': (BuildContext context) => AnimateHeightPage(),
        '/color': (BuildContext context) => AnimateColorPage(),
        '/border': (BuildContext context) => AnimateBorderPage(),
        '/borderradii': (BuildContext context) => AnimateBorderRadiiPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Height', '/height'),
            _buildList(context, 'Color', '/color'),
            _buildList(context, 'Border', '/border'),
            _buildList(context, 'Border Radii', '/borderradii'),
          ],
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, String title, String routeName) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
