import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LAnimatedPositionedExample extends StatelessWidget {
  const LAnimatedPositionedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Positioned'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/106_animated_positioned_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LAnimatedPositioned(),
      ),
    );
  }
}


class LAnimatedPositioned extends StatefulWidget {
  const LAnimatedPositioned({super.key});

  @override
  _LAnimatedPositionedState createState() => _LAnimatedPositionedState();
}

class _LAnimatedPositionedState extends State<LAnimatedPositioned> {
  bool _first = true;

  double _left = 20;
  double _top = 20;
  double _right = 20;
  double _bottom = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.fastLinearToSlowEaseIn,
                left: _left,
                top: _top,
                right: _right,
                bottom: _bottom,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          child: const Text('CLICK ME'),
          onPressed: () {
            setState(() {
              _left = _first ? 10 : 30;
              _top = _first ? 80 : 30;
              _right = _first ? 10 : 30;
              _bottom = _first ? 80 : 30;

              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}

