// https://github.com/flutter/flutter/blob/f7a6a7906b/packages/flutter/lib/src/material/checkbox_list_tile.dart

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ClassSample2Page extends StatefulWidget {
  static const String id = 'class_sample2';
  static const String title = 'ClassSample2';

  @override
  _ClassSample2PageState createState() => _ClassSample2PageState();
}

class _ClassSample2PageState extends State<ClassSample2Page> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ClassSample2Page.title),
      ),
      body: Center(
        child: LinkedLabelCheckbox(
          label: 'Linked, tappable label text',
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

class LinkedLabelCheckbox extends StatelessWidget {
  const LinkedLabelCheckbox({
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
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RichText(
              text: TextSpan(
                text: label,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Label has been tapped.');
                  },
              ),
            ),
          ),
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
