import 'package:flutter/material.dart';

class ClipRRectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              clipBehavior: Clip.hardEdge,
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'Clip.hardEdge',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
