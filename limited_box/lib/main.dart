import 'package:flutter/material.dart';
import 'package:limited_box/pages/sample1.dart';
import 'package:limited_box/pages/sample2.dart';
import 'package:limited_box/pages/sample3.dart';
import 'package:limited_box/pages/sample4.dart';

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
        title: const Text('LimitedBox'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Container (Without LimitedBox)', '/sample1'),
            _buildList(context, 'Container (With LimitedBox)', '/sample2'),
            _buildList(context, 'ListView (Without LimitedBox)', '/sample3'),
            _buildList(context, 'ListView (With LimitedBox)', '/sample4'),
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
