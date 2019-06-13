import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/page1': (BuildContext context) => Page1(),
        '/page2': (BuildContext context) => Page2(),
        '/page3': (BuildContext context) => Page3(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  var title = 'Expanded';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Expanded1', '/page1'),
            _buildList(context, 'Expanded2', '/page2'),
            _buildList(context, 'Expanded with flex', '/page3'),
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

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded1'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              child: Container(
                child: Text('Expanded'),
                color: Colors.yellow,
              ),
            ),
            Container(
              child: Text('Normal'),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded2'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              child: Container(
                child: Text('Expanded'),
                color: Colors.yellow,
              ),
            ),
            Container(
              child: Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              child: Container(
                child: Text('Expanded'),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded with flex'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Text('Expanded (2)'),
                color: Colors.yellow,
              ),
            ),
            Container(
              child: Text('Normal'),
              color: Colors.grey,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text('Expanded (1)'),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
