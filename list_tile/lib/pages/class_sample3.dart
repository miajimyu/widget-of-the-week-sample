import 'package:flutter/material.dart';

class ClassSample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample3'),
      ),
      body: ListTile(
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {},
          child: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.symmetric(vertical: 4),
            alignment: Alignment.center,
            child: const CircleAvatar(),
          ),
        ),
        title: const Text('title'),
        dense: false,
      ),
    );
  }
}
