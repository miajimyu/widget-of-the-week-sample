import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: NotificationListener<MyNotification>(
        onNotification: (notification) {
          print(notification.title);
          return true;
        },
        child: ButtonA(),
      ),
    );
  }
}

class ButtonA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: const Text('Option A'),
      onPressed: () {
        const MyNotification('A was selected!').dispatch(context);
      },
    );
  }
}

class MyNotification extends Notification {
  const MyNotification(this.title);
  final String title;
}
