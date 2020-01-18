import 'package:flutter/material.dart';

class ClassSample1Page extends StatefulWidget {
  @override
  _ClassSample1PageState createState() => _ClassSample1PageState();
}

class _ClassSample1PageState extends State<ClassSample1Page> {
  var _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample1'),
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
