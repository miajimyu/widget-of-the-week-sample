import 'package:flutter/material.dart';

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
