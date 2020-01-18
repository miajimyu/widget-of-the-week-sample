import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  final ValueNotifier<int> value = ValueNotifier<int>(45);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: value,
          builder: (context, dynamic value, _) {
            return Text(
              'Value is ${value.toString()}',
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => value.value++,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
