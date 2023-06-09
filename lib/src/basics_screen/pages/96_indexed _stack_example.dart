import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LIndexedStackExample extends StatelessWidget {
  const LIndexedStackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Indexed Stack'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/96_indexed%20_stack_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LIndexedStack(),
      ),
    );
  }
}


class LIndexedStack extends StatefulWidget {
  const LIndexedStack({super.key});

  @override
  _LIndexedStackState createState() => _LIndexedStackState();
}

class _LIndexedStackState extends State<LIndexedStack> {
  int _index = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: IndexedStack(
            index: _index,
            children: <Widget>[
              Container(
                color: Colors.yellow,
                child: Center(
                  child: Text("Index - 0"),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text("Index - 1"),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text("Index - 2"),
                ),
              ),
              Container(
                color: Colors.amber,
                child: Center(
                  child: Text("Index - 3"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (_index == 3)
                  _index = 0;
                else
                  _index++;
              });
            },
            child: Text('Click Here'),
          ),
        )
      ],
    );
  }
}
