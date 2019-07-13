import 'package:flutter/material.dart';

import '../widgets/page_widget.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    final pageView = PageView(
      controller: controller,
      children: <Widget>[
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Sapme1'),
      ),
      body: pageView,
    );
  }
}
