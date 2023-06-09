import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LTweenAnimationBuilderExample extends StatelessWidget {
  const LTweenAnimationBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tween Animation Builder'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/103_tween_animation_builder_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LTweenAnimationBuilder(),
      ),
    );
  }
}


class LTweenAnimationBuilder extends StatefulWidget {
  const LTweenAnimationBuilder({super.key});

  @override
  _LTweenAnimationBuilderWidgetState createState() =>
      _LTweenAnimationBuilderWidgetState();
}

class _LTweenAnimationBuilderWidgetState extends State<LTweenAnimationBuilder> {
  @override
  Widget build(BuildContext context) {
    Color _cValue = Colors.yellow;
    return Center(
      child: TweenAnimationBuilder<Color?>(
          duration: const Duration(seconds: 3),
          tween: ColorTween(begin: Colors.blue, end: _cValue),
          child: FlutterLogo(
            size: MediaQuery.of(context).size.width * 0.75,
            textColor: Colors.blue,
          ),
          builder: (BuildContext _, Color? value, Widget? child) {
            return ColorFiltered(
              child: child,
              colorFilter: ColorFilter.mode(value!, BlendMode.modulate),
            );
          },
          onEnd: () {
            setState(() {
              _cValue = Colors.green;
            });
          }),
    );
  }
}
