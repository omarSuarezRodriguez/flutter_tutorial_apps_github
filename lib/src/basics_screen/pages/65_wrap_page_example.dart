import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WrapPageExample extends StatelessWidget {
  const WrapPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/65_wrap_page_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LWrap(),
      ),
    );
  }
}

class LWrap extends StatelessWidget {
  const LWrap({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Wrap(
                direction: Axis.vertical,
                spacing: 16.0, // gap between adjacent chips
                runSpacing: 8.0, // gap between lines
                children: <Widget>[
                  CircleAvatar(child: Text('A')),
                  CircleAvatar(child: Text('B')),
                  CircleAvatar(child: Text('C')),
                  CircleAvatar(child: Text('D')),
                  CircleAvatar(child: Text('E')),
                  CircleAvatar(child: Text('F')),
                  CircleAvatar(child: Text('G')),
                  CircleAvatar(child: Text('H')),
                  CircleAvatar(child: Text('I')),
                  CircleAvatar(child: Text('J')),
                  CircleAvatar(child: Text('K')),
                  CircleAvatar(child: Text('L')),
                  CircleAvatar(child: Text('M')),
                  CircleAvatar(child: Text('N')),
                  CircleAvatar(child: Text('O')),
                  CircleAvatar(child: Text('P')),
                  CircleAvatar(child: Text('Q')),
                  CircleAvatar(child: Text('R')),
                  CircleAvatar(child: Text('S')),
                  CircleAvatar(child: Text('T')),
                  CircleAvatar(child: Text('U')),
                  CircleAvatar(child: Text('V')),
                  CircleAvatar(child: Text('W')),
                  CircleAvatar(child: Text('X')),
                  CircleAvatar(child: Text('Y')),
                  CircleAvatar(child: Text('Z')),
                ],
              ),
            ),
          ),
          Expanded(
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 16.0, // gap between adjacent chips
              runSpacing: 8.0, // gap between lines
              children: <Widget>[
                CircleAvatar(child: Text('0')),
                CircleAvatar(child: Text('1')),
                CircleAvatar(child: Text('2')),
                CircleAvatar(child: Text('3')),
                CircleAvatar(child: Text('4')),
                CircleAvatar(child: Text('5')),
                CircleAvatar(child: Text('6')),
                CircleAvatar(child: Text('7')),
                CircleAvatar(child: Text('8')),
                CircleAvatar(child: Text('9')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
