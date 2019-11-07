import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample6 showDialog()'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('showDialog'),
          onPressed: () => showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Accept?'),
              content: Text('Do you accept?'),
              actions: <Widget>[
                FlatButton(
                  child: Text("No"),
                  onPressed: () => Navigator.pop(context),
                ),
                FlatButton(
                  child: Text("Yes"),
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
