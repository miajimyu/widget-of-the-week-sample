import 'package:flutter/material.dart';

import '../widgets/page_widget.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    final pageView = PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 (scrollDirection = vertical)'),
      ),
      body: pageView,
    );
  }
}
