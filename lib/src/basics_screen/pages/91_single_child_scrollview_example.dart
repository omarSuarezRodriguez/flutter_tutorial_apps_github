import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LSingleChildScrollViewExample extends StatelessWidget {
  const LSingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Child ScrollView'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/91_single_child_scrollview_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LSingleChildScrollView(),
      ),
    );
  }
}


class LSingleChildScrollView extends StatelessWidget {
  const LSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.blue, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.yellow, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.red, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.redAccent, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.yellowAccent, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.greenAccent, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.green, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.lightGreen, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.pink, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.purple, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.orange, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.blue, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.yellowAccent, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.redAccent, // Yellow
            height: 200.0,
          ),
          Container(
            color: Colors.pink, // Yellow
            height: 200.0,
          ),
        ],
      ),
    ));
  }
}
