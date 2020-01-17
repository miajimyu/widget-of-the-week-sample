import 'package:flutter/material.dart';

class FadeInCurvePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'FadeInCurve';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          fadeInCurve: Curves.bounceIn,
          fadeInDuration: const Duration(seconds: 2),
          placeholder: 'assets/loading.gif',
          image: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
