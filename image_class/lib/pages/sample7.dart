import 'package:flutter/material.dart';

// Set showSemanticsDebugger property in MaterialApp to true.
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       showSemanticsDebugger: true,
//       ...

class Sample7Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample7 semanticLabel'),
      ),
      body: Center(
          child: Image.asset(
        'assets/images/kirin.png',
        semanticLabel: 'Kirin',
      )),
    );
  }
}
