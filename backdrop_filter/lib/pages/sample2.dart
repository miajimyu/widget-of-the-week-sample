import 'dart:ui';

import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 Positioned'),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset('images/kirin.png'),
          Positioned(
            top: 100,
            bottom: 150,
            left: 100,
            right: 100,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
