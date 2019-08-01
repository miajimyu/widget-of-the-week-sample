import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  final message = 'HOWDY';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              MessageWidget(widget.message),
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                bottom: showMessage ? 200 : 125,
                child: BlockerWidget(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showMessage = !showMessage;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final message;

  MessageWidget(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.lime,
      ),
      width: 300,
      height: 300,
      child: Center(
        child: Text(
          message,
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}

class BlockerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blue,
      ),
      width: 150,
      height: 75,
    );
  }
}
