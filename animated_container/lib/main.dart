import 'package:flutter/material.dart';

import 'pages/border.dart';
import 'pages/border_raddii.dart';
import 'pages/color.dart';
import 'pages/height.dart';
import 'pages/sine_curve.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MyHomePage(),
        '/height': (context) => AnimateHeightPage(),
        '/color': (context) => AnimateColorPage(),
        '/border': (context) => AnimateBorderPage(),
        '/borderradii': (context) => AnimateBorderRadiiPage(),
        '/sine_curve': (context) => SineCurveAnimation(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Height', '/height'),
            _buildList(context, 'Color', '/color'),
            _buildList(context, 'Border', '/border'),
            _buildList(context, 'Border Radii', '/borderradii'),
            _buildList(context, 'Sine Curve', '/sine_curve'),
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
