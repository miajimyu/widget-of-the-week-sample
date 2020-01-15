import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 (With AbsorbPointer)'),
      ),
      body: AbsorbPointer(
        child: ABunchOfWidgets(),
      ),
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
            title: const Text('One-line ListTile'),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(),
            title: const Text('One-line with leading widget'),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: const Text('One-line with trailing widget'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(),
            title: const Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: const Text('One-line dense ListTile'),
            dense: true,
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(size: 56.0),
            title: const Text('Two-line ListTile'),
            subtitle: const Text('Here is a second line'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(size: 72.0),
            title: const Text('Three-line ListTile'),
            subtitle: const Text(
                'A sufficiently long subtitle warrants three lines.'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    );
  }
}
