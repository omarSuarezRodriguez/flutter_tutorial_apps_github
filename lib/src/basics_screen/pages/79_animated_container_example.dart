import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedContainerExample extends StatelessWidget {
  const AnimatedContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/79_animated_container_example.dart'),
              );
            },
          ),
        ],
      ),
      body: LAnimatedContainer(),
    );
  }
}

class LAnimatedContainer extends StatefulWidget {
  const LAnimatedContainer({super.key});
  @override
  _LAnimatedContainerState createState() => _LAnimatedContainerState();
}

class _LAnimatedContainerState extends State<LAnimatedContainer> {
  double size = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton(
            child: Text('Click to Animate'),
            onPressed: () {
              setState(() {
                size = size == 250 ? 50 : 250;
              });
            },
          ),
          AnimatedContainer(
            duration: Duration(seconds: 2),
            width: size,
            height: size,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
