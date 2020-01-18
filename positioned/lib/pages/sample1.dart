import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue[50],
                ),
                const Positioned(
                  top: 25,
                  left: 50,
                  child: FlutterLogo(),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue[50],
                ),
                const Positioned(
                  bottom: 50,
                  right: 25,
                  child: FlutterLogo(),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue[50],
                ),
                const Positioned(
                  bottom: 50,
                  right: 25,
                  height: 75,
                  width: 75,
                  child: FlutterLogo(),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue[50],
                ),
                const Positioned.fill(
                  child: FlutterLogo(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
