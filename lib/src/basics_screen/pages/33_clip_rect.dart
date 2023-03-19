import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ClipRectExample extends StatelessWidget {
  const ClipRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clip Rect'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/33_clip_rect.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LClipRect(),
      ),
    );
  }
}

class LClipRect extends StatefulWidget {
  const LClipRect({super.key});

  @override
  _LClipRectState createState() => _LClipRectState();
}

class _LClipRectState extends State<LClipRect> {
  var _size = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child: Center(
                  child: FlutterLogo(
                size: _size + 10,
              )),
            ),
            borderRadius: BorderRadius.circular(_size),
          ),
        ),
        Container(
          child: Slider(
            value: _size,
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).primaryColor.withOpacity(0.3),
            min: 0.0,
            max: 100.0,
            divisions: 100,
            onChanged: (double value) {
              setState(() {
                _size = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
