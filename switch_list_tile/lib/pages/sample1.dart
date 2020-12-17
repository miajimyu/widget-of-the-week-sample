import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  bool _toggled1 = false;
  bool _toggled2 = false;
  bool _toggled3 = false;
  bool _toggled4 = false;
  bool _toggled5 = false;
  bool _toggled6 = false;
  bool _toggled7 = false;
  bool _toggled8 = false;
  bool _toggledAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
            title: const Text('SwitchListTile'),
            value: _toggled1,
            onChanged: (value) {
              setState(() => _toggled1 = value);
            },
          ),
          SwitchListTile(
            title: const Text('secondary'),
            secondary: const Icon(Icons.settings), // Point to Check
            value: _toggled2,
            onChanged: (value) {
              setState(() => _toggled2 = value);
            },
          ),
          SwitchListTile(
            title: const Text('title'),
            subtitle: const Text('subtitle'), // Point to Check
            value: _toggled3,
            onChanged: (value) {
              setState(() => _toggled3 = value);
            },
          ),
          SwitchListTile(
            title: const Text('controlAffinity leading'), // Point to Check
            controlAffinity: ListTileControlAffinity.leading,
            value: _toggled4,
            onChanged: (value) {
              setState(() => _toggled4 = value);
            },
          ),
          SwitchListTile(
            title: const Text('activeThumbImage'),
            value: _toggled5,
            onChanged: (value) {
              setState(() => _toggled5 = value);
            },
            activeThumbImage:
                _toggled5 ? const AssetImage('images/Icon_circle.png') : null,
          ),
          SwitchListTile(
            title: const Text('activeColor'),
            activeColor: _toggled6 ? Colors.red : Theme.of(context).accentColor,
            value: _toggled6,
            onChanged: (value) {
              setState(() => _toggled6 = value);
            },
          ),
          SwitchListTile(
            title: const Text('activeTrackColor'),
            activeTrackColor:
                _toggled7 ? Colors.red : Theme.of(context).accentColor,
            value: _toggled7,
            onChanged: (value) {
              setState(() => _toggled7 = value);
            },
          ),
          SwitchListTile(
            title: const Text('inactiveThumbColor'),
            inactiveThumbColor: Colors.black,
            value: _toggled8,
            onChanged: (value) {
              setState(() => _toggled8 = value);
            },
          ),
          SwitchListTile(
            title: const Text('Select All'),
            onChanged: (bool value) => setState(() {
              _toggledAll = value;
              _toggled1 = value;
              _toggled2 = value;
              _toggled3 = value;
              _toggled4 = value;
              _toggled5 = value;
              _toggled6 = value;
              _toggled7 = value;
              _toggled8 = value;
            }),
            value: _toggledAll,
          ),
        ],
      ),
    );
  }
}
