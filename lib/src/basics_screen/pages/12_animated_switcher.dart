import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class AnimatedSwitcherDemoExample extends StatelessWidget {
  const AnimatedSwitcherDemoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Switcher'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/12_animated_switcher.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: AnimatedSwitcherDemo(),
      ),
    );
  }
}

Color generateColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));

Widget generateContainer(int keyCount) => Container(
      key: ValueKey<int>(keyCount),
      height: Random().nextDouble() * 200,
      width: Random().nextDouble() * 200,
      decoration: BoxDecoration(
        color: generateColor(),
        borderRadius: BorderRadius.circular(Random().nextDouble() * 100),
        border: Border.all(
          color: generateColor(),
          width: Random().nextDouble() * 5,
        ),
      ),
    );

class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({super.key});
  static String routeName = 'misc/animated_switcher';

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  late Widget container;
  late int keyCount;

  @override
  void initState() {
    super.initState();
    keyCount = 0;
    container = generateContainer(keyCount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher'),
        actions: [
          MaterialButton(
            onPressed: () => setState(
              () => container = generateContainer(++keyCount),
            ),
            child: Text(
              'Change Widget',
              style: TextStyle(
                  color: Theme.of(context).buttonTheme.colorScheme!.onPrimary),
            ),
          ),
        ],
      ),
      body: Center(
        // AnimatedSwitcher Widget is used to switch between different widgets
        // with a given transition. You can change the transitions by using
        // transitionBuilder property.
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: container,
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
      ),
    );
  }
}
