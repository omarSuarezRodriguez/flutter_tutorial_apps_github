import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpacityExamp extends StatelessWidget {
  const OpacityExamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/23_opacity_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: OpacityExample(),
      ),
    );
  }
}

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<StatefulWidget> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  double _opacity1 = 1.0, _opacity2 = 1.0, _opacity3 = 1.0;

  Widget _coloredSquare(Color color) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Click on colored squares below to make them invisible, click '
                'once again to make them reappear.'),
            GestureDetector(
              child: Opacity(
                opacity: _opacity1,
                child: _coloredSquare(Colors.red),
              ),
              onTap: () {
                setState(() => this._opacity1 = 1.0 - this._opacity1);
              },
            ),
            GestureDetector(
              child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: _opacity2,
                child: _coloredSquare(Colors.green),
              ),
              onTap: () {
                setState(() => this._opacity2 = 1.0 - this._opacity2);
              },
            ),
            GestureDetector(
              child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: _opacity3,
                child: _coloredSquare(Colors.blue),
              ),
              onTap: () {
                setState(() => this._opacity3 = 1.0 - this._opacity3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
