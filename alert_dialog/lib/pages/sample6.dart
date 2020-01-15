import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample6 showDialog()'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('showDialog'),
          onPressed: () => showDialog<void>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Accept?'),
              content: const Text('Do you accept?'),
              actions: <Widget>[
                FlatButton(
                  child: const Text('No'),
                  onPressed: () => Navigator.pop(context),
                ),
                FlatButton(
                  child: const Text('Yes'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            barrierDismissible: false,
          ),
        ),
      ),
    );
  }
}
