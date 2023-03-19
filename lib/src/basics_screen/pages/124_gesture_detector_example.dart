import 'package:flutter/material.dart';
import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

class LGestureDetectorExample extends StatelessWidget {
  const LGestureDetectorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gesture Detector'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/124_gesture_detector_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LGestureDetector(),
      ),
    );
  }
}


class LGestureDetector extends StatefulWidget {
  const LGestureDetector({Key? key}) : super(key: key);

  @override
  _LGestureDetectorState createState() => _LGestureDetectorState();
}

enum ALIGN { spaceEvenly, start, center }

class _LGestureDetectorState extends State<LGestureDetector> {
  double _top = 100, _left = 50;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              onPanUpdate: (DragUpdateDetails data) {
                _top = max(0, _top + data.delta.dy);
                _left = max(0, _left + data.delta.dx);
                setState(() {});
              },
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tapped'),
                  ),
                );
              },
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Double Tapped'),
                  ),
                );
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Long Pressed'),
                  ),
                );
              },
              child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Tap / Long press / Double tap / Drag',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

