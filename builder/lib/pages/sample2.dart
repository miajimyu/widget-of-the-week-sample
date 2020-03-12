import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 Builder without build method';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: _scaffoldButton(),
    );
  }

  Widget _scaffoldButton() {
    return Builder(
      builder: (context) {
        return RaisedButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              const SnackBar(
                content: Text('Great!'),
              ),
            );
          },
        );
      },
    );
  }
}
