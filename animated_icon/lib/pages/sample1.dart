import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      animationBehavior: AnimationBehavior.normal,
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addStatusListener(
        (status) async {
          if (status == AnimationStatus.completed) {
            await Future<dynamic>.delayed(const Duration(milliseconds: 500));
            controller?.reverse();
          } else if (status == AnimationStatus.dismissed) {
            await Future<dynamic>.delayed(const Duration(milliseconds: 1000));
            controller?.forward();
          }
        },
      )
      ..addStatusListener((state) => print('$state'));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: Table(
          children: <TableRow>[
            TableRow(children: <Widget>[
              _buildIconButton(AnimatedIcons.add_event, 'add_event'),
              _buildIconButton(AnimatedIcons.arrow_menu, 'arrow_menu'),
              _buildIconButton(AnimatedIcons.close_menu, 'close_menu'),
            ]),
            TableRow(children: <Widget>[
              _buildIconButton(
                  AnimatedIcons.ellipsis_search, 'ellipsis_search'),
              _buildIconButton(AnimatedIcons.event_add, 'event_add'),
              _buildIconButton(AnimatedIcons.home_menu, 'home_menu'),
            ]),
            TableRow(children: <Widget>[
              _buildIconButton(AnimatedIcons.list_view, 'list_view'),
              _buildIconButton(AnimatedIcons.menu_arrow, 'menu_arrow'),
              _buildIconButton(AnimatedIcons.menu_close, 'menu_close'),
            ]),
            TableRow(children: <Widget>[
              _buildIconButton(AnimatedIcons.menu_home, 'menu_home'),
              _buildIconButton(AnimatedIcons.pause_play, 'pause_play'),
              _buildIconButton(AnimatedIcons.play_pause, 'play_pause'),
            ]),
            TableRow(children: <Widget>[
              _buildIconButton(
                  AnimatedIcons.search_ellipsis, 'search_ellipsis'),
              _buildIconButton(AnimatedIcons.view_list, 'view_list'),
              Container(),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(AnimatedIconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(label),
        IconButton(
          icon: AnimatedIcon(
            icon: icon,
            progress: controller,
          ),
          iconSize: 50,
          onPressed: () {},
        ),
      ],
    );
  }
}
