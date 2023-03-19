import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LAspectRatioExample extends StatelessWidget {
  const LAspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aspect Radio'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/93_aspect_radio_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LAspectRatio(),
      ),
    );
  }
}


class LAspectRatio extends StatelessWidget {
  const LAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3 / 2, //3:2
            child: Container(
              color: Colors.pink,
            ),
          ),
          AspectRatio(
            aspectRatio: 5 / 2, //5:2
            child: Container(
              color: Colors.yellow,
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9, //16:9
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    ));
  }
}
