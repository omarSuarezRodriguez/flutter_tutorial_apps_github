import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FittedBoxWidgetExample extends StatelessWidget {
  const FittedBoxWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fitted Box'), actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/29_fitted_box.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: FittedBoxWidget(),
      ),
    );
  }
}

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          FittedBox(
            child: Row(
              children: <Widget>[
                Container(
                  child: const FlutterLogo(),
                ),
                Container(
                  child: Text(
                      "This is a widget to understand how the fittedbox works"),
                )
              ],
            ),
            alignment: Alignment.centerLeft,
          )
        ],
      ),
    );
  }
}
