import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  var thing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 thing = $thing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello',
              style: TextStyle(fontSize: 70),
            ),
            FlatButton(
                child: Text(
                  'Click me!',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                onPressed: () async {
                  var response = await showCupertinoModalPopup(
                    context: context,
                    builder: (context) => MyActionSheet(context: context),
                  );
                  setState(() {
                    thing = response;
                  });
                })
          ],
        ),
      ),
    );
  }
}

class MyActionSheet extends StatelessWidget {
  final context;

  MyActionSheet({this.context});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text('Thing'),
      message: Text('A short list of things to do'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text('Good Thing'),
          onPressed: () => Navigator.of(context).pop("good"),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text('Bad Thing'),
          onPressed: () => Navigator.of(context).pop("bad"),
          isDestructiveAction: true,
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
