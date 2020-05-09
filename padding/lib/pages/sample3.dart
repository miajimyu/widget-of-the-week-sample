import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3 EdgeInsetsDirectional.fromSTEB';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Sample3Page.title),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 100, 150),
        child: BlueBox(),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Sample',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
