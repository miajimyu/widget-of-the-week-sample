import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceOrientation = MediaQuery.of(context).orientation;
    var fontScaling = MediaQuery.of(context).textScaleFactor;
    var notchInset = MediaQuery.of(context).padding;
    var noAnimations = MediaQuery.of(context).disableAnimations;
    var screenContrast = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('orientation ' + deviceOrientation.toString()),
            Text('textScaleFactor ' + fontScaling.toString()),
            Text('padding ' + notchInset.toString()),
            Text('disableAnimations ' + noAnimations.toString()),
            Text('platformBrightness ' + screenContrast.toString()),
          ],
        ),
      ),
    );
  }
}
