import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  final String name = 'kirin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 ExcludeSemantics'),
      ),
      body: ExcludeSemantics(
        child: Semantics(
          child: FaceImage(
            file: '$name.png',
          ),
          label: 'An image of $name',
          enabled: true,
          readOnly: true,
        ),
      ),
    );
  }
}

class FaceImage extends StatelessWidget {
  const FaceImage({Key key, this.file}) : super(key: key);

  final String file;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/kirin.png');
  }
}
