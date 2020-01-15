import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample5 fit (w:100, h:200)'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/kirin.png',
            width: 100,
            height: 200,
            fit: BoxFit.contain,
          ),
          const Text('BoxFit.contain'),
          const Spacer(),
          Image.asset(
            'assets/images/kirin.png',
            width: 100,
            height: 200,
            fit: BoxFit.fill,
          ),
          const Text('BoxFit.fill'),
          const Spacer(),
          Image.asset(
            'assets/images/kirin.png',
            width: 100,
            height: 200,
            fit: BoxFit.cover,
          ),
          const Text('BoxFit.cover'),
        ],
      )),
    );
  }
}
