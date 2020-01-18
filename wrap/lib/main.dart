import 'package:flutter/material.dart';
import 'package:wrap/pages/wrap_direction.dart';

import 'pages/class_sample1.dart';
import 'pages/no_wrap.dart';
import 'pages/wrap.dart';
import 'pages/wrap_alignment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/no_wrap': (context) => NoWrapPage(),
        '/wrap': (context) => WrapPage(),
        '/wrap_direction': (context) => WrapDirectionPage(),
        '/wrap_alignment': (context) => WrapAlignmentPage(),
        '/class_sample1': (context) => ClassSample1Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Not Wrap', '/no_wrap'),
            _buildList(context, 'Wrap', '/wrap'),
            _buildList(
                context, 'Set the direction property', '/wrap_direction'),
            _buildList(
                context, 'Alignment / spacing / runSpacing', '/wrap_alignment'),
            _buildList(context, 'ClassSample1', '/class_sample1'),
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
