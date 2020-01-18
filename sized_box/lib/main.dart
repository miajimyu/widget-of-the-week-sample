import 'package:flutter/material.dart';

import 'pages/sample1.dart';
import 'pages/sample2.dart';
import 'pages/sample3.dart';
import 'pages/sample4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sample1': (context) => Sample1Page(),
        '/sample2': (context) => Sample2Page(),
        '/sample3': (context) => Sample3Page(),
        '/sample4': (context) => Sample4Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Sample1 (w:200, h:100)', '/sample1'),
            _buildList(context, 'Sample2 (w&h : double.infinity)', '/sample2'),
            _buildList(context, 'Sample3 SizedBox.expand()', '/sample3'),
            _buildList(context, 'Sample4 Empty SizedBox', '/sample4'),
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
