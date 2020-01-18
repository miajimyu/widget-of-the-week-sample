import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/noopacity': (context) => NoOpacityPage(),
        '/opaticy': (context) => OpacityPage(),
        '/blending': (context) => BlendingStacksPage(),
        '/animatedopacity': (context) => AnimatedOpacityPage(),
        '/samples': (context) => SamplesPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'No Opacity', '/noopacity'),
            _buildList(context, 'Opacity', '/opaticy'),
            _buildList(context, 'Blending Stacks', '/blending'),
            _buildList(context, 'Animated Opacity', '/animatedopacity'),
            _buildList(context, 'Samples', '/samples'),
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

class BlendingStacksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blending Stacks'),
      ),
      body: Center(
        child: Stack(
          children: [
            const FlutterLogo(
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
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5, 0.7, 0.9],
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
        title: const Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Stack(
          children: [
            const FlutterLogo(
              size: 300,
            ),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _opacity,
              child: _buildGradientContainer(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opacity = _opacity == 0 ? 0.8 : 0;
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }

  Widget _buildGradientContainer() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5, 0.7, 0.9],
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

class SamplesPage extends StatefulWidget {
  @override
  _SamplesPageState createState() => _SamplesPageState();
}

class _SamplesPageState extends State<SamplesPage> {
  var _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samples'),
      ),
      body: Column(
        children: <Widget>[
          _buildSample1(_visible),
          _buildSample2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }

  Widget _buildSample1(bool _visible) {
    return Opacity(
      opacity: _visible ? 1.0 : 0.0,
      child: const Text('Now you see me, now you don\'t!'),
    );
  }

  Widget _buildSample2() {
    return Image.network(
        'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
        color: const Color.fromRGBO(255, 255, 255, 0.5),
        colorBlendMode: BlendMode.modulate);
  }
}
