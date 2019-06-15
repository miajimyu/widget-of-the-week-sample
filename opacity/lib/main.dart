import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/noopacity': (BuildContext context) => NoOpacityPage(),
        '/opaticy': (BuildContext context) => OpacityPage(),
        '/blending': (BuildContext context) => BlendingStacksPage(),
        '/animatedopacity': (BuildContext context) => AnimatedOpacityPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'No Opacity', '/noopacity'),
            _buildList(context, 'Opacity', '/opaticy'),
            _buildList(context, 'Blending Stacks', '/blending'),
            _buildList(context, 'Animated Opacity', '/animatedopacity'),
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

class NoOpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = [
      _buildMyWidget(Colors.green),
      // _buildMyWidget(Colors.blue),
      _buildMyWidget(Colors.yellow),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('No Opacity'),
      ),
      body: Center(
        child: Column(
          children: widgets,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  Widget _buildMyWidget(MaterialColor color) {
    return Container(
      color: color,
      width: 100.0,
      height: 100.0,
      margin: EdgeInsets.all(10.0),
    );
  }
}

class OpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = [
      _buildMyWidget(Colors.green),
      Opacity(
        opacity: 0.0,
        child: _buildMyWidget(Colors.blue),
      ),
      _buildMyWidget(Colors.yellow),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Column(
          children: widgets,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  Widget _buildMyWidget(MaterialColor color) {
    return Container(
      color: color,
      width: 100.0,
      height: 100.0,
      margin: EdgeInsets.all(10.0),
    );
  }
}

class BlendingStacksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blending Stacks'),
      ),
      body: Center(
        child: Stack(
          children: [
            FlutterLogo(
              size: 300,
            ),
            Opacity(
              opacity: 0.8,
              child: _buildGradientContainer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientContainer() {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.indigo[900],
            Colors.indigo[600],
            Colors.indigo[300],
            Colors.indigo[100],
          ],
        ),
      ),
    );
  }
}

class AnimatedOpacityPage extends StatefulWidget {
  @override
  _AnimatedOpacityPageState createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _opacity = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Stack(
          children: [
            FlutterLogo(
              size: 300,
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: _buildGradientContainer(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opacity = (_opacity == 0.0 ? 0.8 : 0.0);
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }

  Widget _buildGradientContainer() {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.indigo[900],
            Colors.indigo[600],
            Colors.indigo[300],
            Colors.indigo[100],
          ],
        ),
      ),
    );
  }
}
