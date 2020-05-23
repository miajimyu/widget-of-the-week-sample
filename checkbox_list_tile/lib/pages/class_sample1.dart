// https://github.com/flutter/flutter/blob/f7a6a7906b/packages/flutter/lib/src/material/checkbox_list_tile.dart

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class ClassSample1Page extends StatefulWidget {
  static const String id = 'class_sample1';
  static const String title = 'ClassSample1';

  @override
  _ClassSample1PageState createState() => _ClassSample1PageState();
}

class _ClassSample1PageState extends State<ClassSample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ClassSample1Page.title),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Animate Slowly'),
          value: timeDilation != 1.0,
          onChanged: (bool value) {
            setState(() {
              timeDilation = value ? 10.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
      ),
    );
  }
}
