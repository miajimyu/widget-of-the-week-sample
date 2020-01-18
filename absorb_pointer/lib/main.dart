import 'package:flutter/material.dart';

import 'pages/disabled_widget.dart';
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
        '/': (context) => MyHomePage(),
        '/disabled_widget': (context) => DisabledWidgetPage(),
        '/sample1': (context) => Sample1Page(),
        '/sample2': (context) => Sample2Page(),
        '/sample3': (context) => Sample3Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsorbPointer'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(
                context, 'Many widges can be disabled', '/disabled_widget'),
            _buildList(context, 'Sample1 (Without AbsorbPointer)', '/sample1'),
            _buildList(context, 'Sample2 (With AbsorbPointer)', '/sample2'),
            _buildList(context, 'Sample3 absorbing', '/sample3'),
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
