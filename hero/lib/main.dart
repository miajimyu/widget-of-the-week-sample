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
        '/': (BuildContext context) => MyHomePage(),
        '/hero': (BuildContext context) => HeroPage(),
        '/hero_detail': (BuildContext context) => HeroDetailPage(),
        '/clip': (BuildContext context) => UsingClipPage(),
        '/clip_detail': (BuildContext context) => UsingClipDetailPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
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
