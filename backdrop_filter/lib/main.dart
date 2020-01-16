import 'package:flutter/material.dart';

import 'pages/sample1.dart';
import 'pages/sample2.dart';
import 'pages/sample3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyHomePage(),
        '/sample1': (BuildContext context) => Sample1Page(),
        '/sample2': (BuildContext context) => Sample2Page(),
        '/sample3': (BuildContext context) => Sample3Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackdropFilter'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Sample1 Positioned.fill()', '/sample1'),
            _buildList(context, 'Sample2 Positioned', '/sample2'),
            _buildList(context, 'Sample of BackdropFilter class', '/sample3'),
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
