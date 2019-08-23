import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  var name = 'kirin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 MergeSemantics'),
      ),
      body: MergeSemantics(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Semantics(
              child: Text('KIRIN'),
              label: 'Text',
              enabled: true,
            ),
            Semantics(
              child: FaceImage(
                file: '$name.png',
              ),
              label: 'An image of $name',
              enabled: true,
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}

class FaceImage extends StatelessWidget {
  final String file;

  const FaceImage({Key key, this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/$file');
  }
}
