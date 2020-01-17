import 'package:flutter/material.dart';

import 'pages/expanded1.dart';
import 'pages/expanded2.dart';
import 'pages/expanded_with_flex.dart';
import 'pages/sample1.dart';
import 'pages/sample2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/expanded1': (context) => Expanded1Page(),
        '/expanded2': (context) => Expanded2Page(),
        '/expanded_with_flex': (context) => ExpandedWithFlexPage(),
        '/sample1': (context) => Sample1(),
        '/sample2': (context) => Sample2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title = 'Expanded';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Expanded1', '/expanded1'),
            _buildList(context, 'Expanded2', '/expanded2'),
            _buildList(context, 'Expanded with flex', '/expanded_with_flex'),
            _buildList(context, 'Sample1', '/sample1'),
            _buildList(context, 'Sample2', '/sample2'),
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
