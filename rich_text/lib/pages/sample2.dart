import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var linkTextStyle =
        TextStyle(decoration: TextDecoration.underline, color: Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 (Link)'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.display1,
            children: [
              TextSpan(
                  text:
                      "Flutter is Google’s portable UI toolkit for building beautiful, natively-compiled applications for "),
              TextSpan(
                text: 'mobile',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch('https://flutter.dev/docs'),
                style: linkTextStyle,
              ),
              TextSpan(text: ", "),
              TextSpan(
                text: 'web',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch('https://flutter.dev/web'),
                style: linkTextStyle,
              ),
              TextSpan(text: ", and "),
              TextSpan(
                text: 'desktop',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch(
                      'https://github.com/flutter/flutter/wiki/Desktop-shells'),
                style: linkTextStyle,
              ),
              TextSpan(text: " from a single codebase."),
            ],
          ),
        ),
      ),
    );
  }
}
