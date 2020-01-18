import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    final fontScaling = MediaQuery.of(context).textScaleFactor;
    final notchInset = MediaQuery.of(context).padding;
    final noAnimations = MediaQuery.of(context).disableAnimations;
    final screenContrast = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('orientation ${deviceOrientation.toString()}'),
            Text('textScaleFactor ${fontScaling.toString()}'),
            Text('padding ${notchInset.toString()}'),
            Text('disableAnimations ${noAnimations.toString()}'),
            Text('platformBrightness ${screenContrast.toString()}'),
          ],
        ),
      ),
    );
  }
}
