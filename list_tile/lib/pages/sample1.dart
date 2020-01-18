import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Column(
        children: <Widget>[
          // basic
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Widget of the week'),
            trailing: Icon(Icons.menu),
          ),
          // subtitle
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Widget of the week'),
            subtitle:
                Text('#54 Lorem ipsum dolor sit amet, consectetur cras amet.'),
            trailing: Icon(Icons.menu),
          ),
          // isThreeLine
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Widget of the week'),
            subtitle:
                Text('#54 Lorem ipsum dolor sit amet, consectetur cras amet.'),
            isThreeLine: true,
            trailing: Icon(Icons.menu),
          ),
          // dense
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Widget of the week'),
            subtitle:
                Text('#54 Lorem ipsum dolor sit amet, consectetur cras amet.'),
            isThreeLine: true,
            dense: true,
            trailing: Icon(Icons.menu),
          ),
          // onTap
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Widget of the week'),
            subtitle: const Text('#54'),
            onTap: () {},
            trailing: const Icon(Icons.menu),
          ),
          // onLongPress
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Widget of the week'),
            subtitle: const Text('#54'),
            onLongPress: () {},
            trailing: const Icon(Icons.menu),
          ),
          // enabled
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Widget of the week'),
            subtitle: Text('#54'),
            enabled: false,
            trailing: Icon(Icons.menu),
          ),
          // selected
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Widget of the week'),
            subtitle: Text('#54'),
            selected: true,
            trailing: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
