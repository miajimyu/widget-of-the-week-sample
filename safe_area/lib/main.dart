import 'package:flutter/material.dart';
import 'package:safe_area/pages/safe_area.dart';
import 'package:safe_area/pages/without_safe_area.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/without_safe_area': (context) => WithoutSafeAreaPage(),
        '/safe_area': (context) => SafeAreaPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title = 'SafeArea';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Without SafeArea', '/without_safe_area'),
            _buildList(context, 'With SafeArea', '/safe_area'),
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
