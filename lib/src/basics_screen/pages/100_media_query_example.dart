import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LMediaQueryExample extends StatelessWidget {
  const LMediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Media Query Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/100_media_query_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LMediaQuery(),
      ),
    );
  }
}


class LMediaQuery extends StatelessWidget {
  const LMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Device Information:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
            Text(
              "Orientation : " + MediaQuery.of(context).orientation.toString(),
            ),
            Text(
              "Size(w,h) : " + MediaQuery.of(context).size.toString(),
            ),
            Text(
              "Pixel Ratio : " +
                  MediaQuery.of(context).devicePixelRatio.toString(),
            ),
            Text(
              "Platform Brightness : " +
                  MediaQuery.of(context).platformBrightness.toString(),
            ),
            Text(
              "Device padding : " + MediaQuery.of(context).padding.toString(),
            ),
            Text(
              "Navigation Mode : " +
                  MediaQuery.of(context).navigationMode.toString(),
            ),
            Text(
              "Navigation Mode : " +
                  MediaQuery.of(context).navigationMode.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

