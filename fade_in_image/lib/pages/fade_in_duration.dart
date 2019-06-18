import 'package:flutter/material.dart';

class FadeInDurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'FadeInDuration';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          fadeInDuration: const Duration(seconds: 1),
          placeholder: 'assets/loading.gif',
          image: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
