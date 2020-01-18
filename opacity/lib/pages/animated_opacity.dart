import 'package:flutter/material.dart';

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
