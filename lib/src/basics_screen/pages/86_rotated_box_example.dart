import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LRotatedBoxExample extends StatelessWidget {
  const LRotatedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rotated Box Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/86_rotated_box_example.dart'), 
              );
            },
          ),
        ],),
      body: const Center(
        child: LRotatedBox(),
      ),
    );
  }
}


class LRotatedBox extends StatelessWidget {
  const LRotatedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RotatedBox(
          quarterTurns: 1,
          child: Container(
              color: Colors.cyan,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Hello World!'),
              )),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: Container(
              color: Colors.amber,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Hello World!'),
              )),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Container(
              color: Colors.deepPurple,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Hello World!'),
              )),
        ),
        RotatedBox(
          quarterTurns: 4,
          child: Container(
              color: Colors.pink,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Hello World!'),
              )),
        ),
      ],
    );
  }
}
