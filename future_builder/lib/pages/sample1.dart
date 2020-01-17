import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: FutureBuilder<String>(
        future: _getPostTitle(1),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Text('Press button to start.');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Text('Awaiting result...');
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              return Text('Result: ${snapshot.data}');
          }
          return null; // unreachable
        },
      ),
    );
  }

  Future<String> _getPostTitle(int id) async {
    final response = await http.get(
      Uri.encodeFull('https://jsonplaceholder.typicode.com/posts/$id'),
      headers: {'Accept': 'application/json'},
    );
    final dynamic data = json.decode(response.body);
    return data['title'].toString();
  }
}
