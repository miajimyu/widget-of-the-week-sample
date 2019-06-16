import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/pageview': (BuildContext context) => PageViewPage(),
        '/pageviewvertical': (BuildContext context) => VerticalPageViewPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'PageView', '/pageview'),
            _buildList(context, 'PageView Vertical', '/pageviewvertical'),
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

class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    final pageView = PageView(
      controller: controller,
      children: <Widget>[
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: pageView,
    );
  }
}

class VerticalPageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    final pageView = PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Vertical'),
      ),
      body: pageView,
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('page 1'),
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('page 2'),
    );
  }
}

class MyPage3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('page 3'),
    );
  }
}
