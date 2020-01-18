import 'package:flutter/material.dart';

class OpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = [
      _buildMyWidget(Colors.green),
      Opacity(
        opacity: 0,
        child: _buildMyWidget(Colors.blue),
      ),
      _buildMyWidget(Colors.yellow),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity'),
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
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(10),
    );
  }
}
