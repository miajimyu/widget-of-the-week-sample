import 'package:flutter/material.dart';

import 'pages/sample_of_class.dart';

import 'pages/sample1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/sample1': (BuildContext context) => Sample1Page(),
        '/class_sample1': (BuildContext context) => ClassSample1Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBuilder'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Sample1', '/sample1'),
            _buildList(
                context, 'Sample1 of AnimatedBuilder class', '/class_sample1'),
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
