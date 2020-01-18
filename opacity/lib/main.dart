import 'package:flutter/material.dart';
import 'package:opacity/pages/class_sample1.dart';

import 'pages/animated_opacity.dart';
import 'pages/blending_stacks.dart';
import 'pages/no_opacity.dart';
import 'pages/opacity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/noopacity': (context) => NoOpacityPage(),
        '/opaticy': (context) => OpacityPage(),
        '/blending': (context) => BlendingStacksPage(),
        '/animatedopacity': (context) => AnimatedOpacityPage(),
        '/samples': (context) => ClassSample1Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'No Opacity', '/noopacity'),
            _buildList(context, 'Opacity', '/opaticy'),
            _buildList(context, 'Blending Stacks', '/blending'),
            _buildList(context, 'Animated Opacity', '/animatedopacity'),
            _buildList(context, 'Samples', '/samples'),
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
