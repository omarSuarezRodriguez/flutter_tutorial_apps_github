import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandedPageExample extends StatelessWidget {
  const ExpandedPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/64_expanded_page_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LExpanded(),
      ),
    );
  }
}

class LExpanded extends StatelessWidget {
  const LExpanded({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.green,
            height: 50,
            child: Center(child: Text("Container Top")),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          child: Center(child: Text(" flex: 2")),
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        height: 100,
                        width: 100,
                        child: Center(child: Text("Container")),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          child: Center(child: Text(" flex: 1")),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          child: Center(child: Text("flex: 2")),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.blue,
                          height: 100,
                          child: Center(child: Text("flex: 3")),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          child: Center(child: Text(" flex: 1")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.green,
            height: 50,
            child: Center(child: Text("Container Bottom")),
          ),
        ],
      ),
    );
  }
}
