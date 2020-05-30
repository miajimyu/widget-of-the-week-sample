import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('More Info'),
          onPressed: () => showAboutDialog(
            context: context,
            applicationVersion: '2.0.1',
            applicationIcon: const Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
            applicationLegalese: 'Blah blah.',
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('some text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
