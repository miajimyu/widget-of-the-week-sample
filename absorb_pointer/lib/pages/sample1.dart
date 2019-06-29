import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 (Without AbsorbPointer)'),
      ),
      body: ABunchOfWidgets(),
    );
  }
}

class ABunchOfWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            onTap: () {},
            title: Text('One-line ListTile'),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text('One-line with leading widget'),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: Text('One-line with trailing widget'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: Text('One-line dense ListTile'),
            dense: true,
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: FlutterLogo(size: 56.0),
            title: Text('Two-line ListTile'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: FlutterLogo(size: 72.0),
            title: Text('Three-line ListTile'),
            subtitle:
                Text('A sufficiently long subtitle warrants three lines.'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    );
  }
}
