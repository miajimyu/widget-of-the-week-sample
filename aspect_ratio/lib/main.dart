import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/aspect_ratio': (BuildContext context) => AspectRatioPage(),
        '/expanded_align': (BuildContext context) => ExpandedAlignPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'AspectRatio.aspectRatio', '/aspect_ratio'),
            _buildList(context, 'Expanded & Align', '/expanded_align'),
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

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio.aspectRatio'),
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.blue,
              ),
              margin: EdgeInsets.all(50.0),
              child: Center(
                child: Text(
                  'aspectRatio: 3 / 2',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.lightBlue,
              ),
              margin: EdgeInsets.all(50.0),
              child: Center(
                child: Text(
                  'aspectRatio: 1.5',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandedAlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded & Align'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AspectRatio(
                aspectRatio: 3 / 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue,
                  ),
                  margin: EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      'bottomCenter',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
