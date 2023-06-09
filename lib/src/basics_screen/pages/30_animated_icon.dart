import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedIconWidgetExample extends StatelessWidget {
  const AnimatedIconWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Icon'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/30_animated_icon.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: AnimatedIconWidget(),
      ),
    );
  }
}

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;

  late Animation animation;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
        iconSize: 70,
        icon: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: controller,
        ),
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying;
            isPlaying ? controller.forward() : controller.reverse();
          });
        },
      )),
    );
  }
}
