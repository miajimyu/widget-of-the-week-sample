import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassSample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> _neverSatisfied() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (context) {
          return AlertDialog(
            title: const Text('Rewind and remember'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('You will never be satisfied.'),
                  Text('You\’re like me. I’m never satisfied.'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: const Text('Regret'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample1'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('AlertDialog'),
          onPressed: _neverSatisfied,
        ),
      ),
    );
  }
}
