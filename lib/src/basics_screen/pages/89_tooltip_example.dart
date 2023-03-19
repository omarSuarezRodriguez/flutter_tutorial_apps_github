import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LTooltipExample extends StatelessWidget {
  const LTooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tooltip Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/89_tooltip_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LTooltip(),
      ),
    );
  }
}



class LTooltip extends StatelessWidget {
  const LTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: Center(child: Text("Long Press on boxes")),
        ),
        Center(
            child: Tooltip(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          message: "Green",
        )),
        Center(
            child: Tooltip(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
          message: "Yelow",
        )),
        Center(
            child: Tooltip(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          message: "Red",
        )),
      ],
    );
  }
}

