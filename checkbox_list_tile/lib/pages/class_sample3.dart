// https://github.com/flutter/flutter/blob/f7a6a7906b/packages/flutter/lib/src/material/checkbox_list_tile.dart

import 'package:flutter/material.dart';

class ClassSample3Page extends StatefulWidget {
  static const String id = 'class_sample3';
  static const String title = 'ClassSample3';

  @override
  _ClassSample3PageState createState() => _ClassSample3PageState();
}

class _ClassSample3PageState extends State<ClassSample3Page> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ClassSample3Page.title),
      ),
      body: Center(
        child: LabeledCheckbox(
          label: 'This is the label text',
          padding: const EdgeInsets.symmetric(horizontal: 20),
          value: _isSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
        ),
      ),
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
