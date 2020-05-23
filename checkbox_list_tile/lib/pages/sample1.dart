import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CheckItem(ListTileControlAffinity.platform),
          CheckItem(ListTileControlAffinity.leading),
          CheckItem(ListTileControlAffinity.trailing),
        ],
      ),
    );
  }
}

class CheckItem extends StatefulWidget {
  const CheckItem(this.affinity);

  final ListTileControlAffinity affinity;

  @override
  _CheckItemState createState() => _CheckItemState();
}

class _CheckItemState extends State<CheckItem> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.affinity.toString()),
      secondary: const Icon(Icons.beach_access),
      controlAffinity: widget.affinity,
      value: _checked,
      onChanged: (bool value) {
        setState(() {
          _checked = value;
        });
      },
      activeColor: Colors.green,
      checkColor: Colors.black,
    );
  }
}
