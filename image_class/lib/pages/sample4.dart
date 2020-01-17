import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Sample4Page extends StatefulWidget {
  @override
  _Sample4PageState createState() => _Sample4PageState();
}

class _Sample4PageState extends State<Sample4Page> {
  File imageFile;

  Future<void> _getImageFile(ImageSource source) async {
    final file = await ImagePicker.pickImage(source: source);

    setState(() {
      imageFile = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 Image.memory()'),
      ),
      body: Center(
        child: imageFile == null
            ? const Text('No Image')
            : Image.memory(imageFile.readAsBytesSync()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () => _getImageFile(ImageSource.camera),
      ),
    );
  }
}
