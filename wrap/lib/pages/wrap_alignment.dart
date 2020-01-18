import 'package:flutter/material.dart';

class WrapAlignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alignment / spacing / runSpacing'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: Wrap(
            alignment: WrapAlignment.end,
            spacing: 10,
            runSpacing: 20,
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
      color: Colors.amber,
      height: 60,
      width: 60,
    );
  }
}
