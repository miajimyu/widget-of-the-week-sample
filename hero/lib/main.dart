import 'package:flutter/material.dart';
import 'package:hero/pages/hero.dart';
import 'package:hero/pages/using_clip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/hero': (context) => HeroPage(),
        '/hero_detail': (context) => HeroDetailPage(),
        '/clip': (context) => UsingClipPage(),
        '/clip_detail': (context) => UsingClipDetailPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Hero', '/hero'),
            _buildList(context, 'Using clip', '/clip'),
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
