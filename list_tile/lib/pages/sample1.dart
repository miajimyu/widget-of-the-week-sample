import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Column(
        children: <Widget>[
          // basic
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            trailing: Icon(Icons.menu),
          ),
          // subtitle
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle:
                Text('#54 Lorem ipsum dolor sit amet, consectetur cras amet.'),
            trailing: Icon(Icons.menu),
          ),
          // isThreeLine
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle:
                Text('#54 Lorem ipsum dolor sit amet, consectetur cras amet.'),
            isThreeLine: true,
            trailing: Icon(Icons.menu),
          ),
          // dense
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle:
                Text('#54 Lorem ipsum dolor sit amet, consectetur cras amet.'),
            isThreeLine: true,
            dense: true,
            trailing: Icon(Icons.menu),
          ),
          // onTap
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle: Text('#54'),
            onTap: () => {},
            trailing: Icon(Icons.menu),
          ),
          // onLongPress
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle: Text('#54'),
            onLongPress: () => {},
            trailing: Icon(Icons.menu),
          ),
          // enabled
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle: Text('#54'),
            enabled: false,
            trailing: Icon(Icons.menu),
          ),
          // selected
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Widget of the week"),
            subtitle: Text('#54'),
            selected: true,
            trailing: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
