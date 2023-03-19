// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({super.key});
  static String routeName = 'misc/animated_positioned';

  @override
  State<AnimatedPositionedDemo> createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  late double topPosition;
  late double leftPosition;

  double generateTopPosition(double top) => Random().nextDouble() * top;

  double generateLeftPosition(double left) => Random().nextDouble() * left;

  @override
  void initState() {
    super.initState();
    topPosition = generateTopPosition(30);
    leftPosition = generateLeftPosition(30);
  }

  void changePosition(double top, double left) {
    setState(() {
      topPosition = generateTopPosition(top);
      leftPosition = generateLeftPosition(left);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBar = AppBar(
      title: const Text('Animated Positioned'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.code),
          onPressed: () {
            launchUrl(
              Uri.parse(
                  'https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/11_animated_positioned.dart'),
            );
          },
        ),
      ],
    );
    final topPadding = MediaQuery.of(context).padding.top;
    // AnimatedPositioned animates changes to a widget's position within a Stack
    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            AnimatedPositioned(
              top: topPosition,
              left: leftPosition,
              duration: const Duration(seconds: 1),
              child: InkWell(
                onTap: () => changePosition(
                    size.height -
                        (appBar.preferredSize.height + topPadding + 50),
                    size.width - 150),
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Click Me',
                    style: TextStyle(
                      color:
                          Theme.of(context).buttonTheme.colorScheme!.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
