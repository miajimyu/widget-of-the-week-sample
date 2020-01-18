import 'package:custom_paint/pages/custom_paint.dart';
import 'package:custom_paint/pages/flutter_in_focus_example1.dart';
import 'package:custom_paint/pages/flutter_in_focus_example2.dart';
import 'package:custom_paint/pages/flutter_in_focus_example3.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/custom_paint1': (context) => CustomPaintPage(),
        '/example1': (context) => FlutterInFocusExample1Page(),
        '/example2': (context) => FlutterInFocusExample2Page(),
        '/example3': (context) => FlutterInFocusExample3Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(
                context, 'CustomPaint & CustomPainter', '/custom_paint1'),
            _buildList(context, 'Example1 (Flutter In Focus)', '/example1'),
            _buildList(context, 'Example2 (Flutter In Focus)', '/example2'),
            _buildList(context, 'Example3 (Flutter In Focus)', '/example3'),
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
