import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: Wrap(
            children: [
              _buildContainer(),
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
      margin: const EdgeInsets.all(5),
      color: Colors.amber,
      height: 60,
      width: 60,
    );
  }
}
