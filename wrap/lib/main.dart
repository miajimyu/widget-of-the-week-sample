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
        '/sample1': (BuildContext context) => Sample1(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Not Wrap', '/page1'),
            _buildList(context, 'Wrap', '/page2'),
            _buildList(context, 'Sample1', '/sample1'),
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
        title: Text('Not Wrap'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          padding: EdgeInsets.all(10.0),
          color: Colors.blue,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.amber,
      height: 60.0,
      width: 60.0,
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          padding: EdgeInsets.all(10.0),
          color: Colors.blue,
          child: Wrap(
            children: [
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.amber,
      height: 60.0,
      width: 60.0,
    );
  }
}

class Sample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample'),
      ),
      body: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('AH')),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('ML')),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('HM')),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: Text('JL')),
            label: Text('Laurens'),
          ),
        ],
      ),
    );
  }
}
