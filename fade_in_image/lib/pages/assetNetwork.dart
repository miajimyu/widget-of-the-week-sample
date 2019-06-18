import 'package:flutter/material.dart';

// https://flutter.dev/docs/cookbook/images/fading-in-images

class AssetNetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'FadeInImage.assetNetwork()';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/loading.gif',
          image: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
