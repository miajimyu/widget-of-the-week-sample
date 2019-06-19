import 'package:flutter/material.dart';
import 'package:stream_builder/pages/count.dart';
import 'package:stream_builder/pages/http_response.dart';
import 'package:stream_builder/pages/work_with_websocket.dart';
import 'package:web_socket_channel/io.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/websocket': (BuildContext context) => WebSocketPage(
              title: 'WebSocket Demo',
              channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
            ),
        '/count': (BuildContext context) => CountPage(),
        '/http': (BuildContext context) => HttpResponsePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'WebSocket Demo', '/websocket'),
            _buildList(context, 'Count', '/count'),
            _buildList(context, 'HttpResponse', '/http'),
          ],
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, String title, String routeName) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
