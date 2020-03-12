import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1 Builder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: Builder(
        builder: (context) {
          return RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Great!'),
                ),
              );
            },
          );
        },
      ),
    );
  }

  // This code does not work (Without Builder)
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text(Sample1Page.title),
  //     ),
  //     body: RaisedButton(
  //       onPressed: () {
  //         Scaffold.of(context).showSnackBar(
  //           SnackBar(
  //             content: Text('Help!'),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
