import 'package:flutter/material.dart';

Widget wideWidget() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      color: Colors.indigo,
      height: 200.0,
    ),
  );
}

Widget mediumWidget() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      color: Colors.blue,
      height: 100.0,
    ),
  );
}

Widget narrowWidget() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      color: Colors.amber,
      height: 50.0,
    ),
  );
}
