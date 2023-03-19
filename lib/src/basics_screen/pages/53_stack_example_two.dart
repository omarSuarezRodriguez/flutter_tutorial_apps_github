import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StackExampleTwo extends StatelessWidget {
  const StackExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/53_stack_example_two.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LStack(),
      ),
    );
  }
}

class LStack extends StatelessWidget {
  const LStack({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            width: 400,
            height: 400,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            width: 25,
            height: 25,
            color: Colors.greenAccent,
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
