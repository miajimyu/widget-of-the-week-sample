import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3 ListView.separated()';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample3Page.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Text(index.toString()),
        itemCount: 5,
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
