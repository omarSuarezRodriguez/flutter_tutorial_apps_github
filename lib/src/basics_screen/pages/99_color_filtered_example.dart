import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LColorFilteredExample extends StatelessWidget {
  const LColorFilteredExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Filtered'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/99_color_filtered_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LColorFiltered(),
      ),
    );
  }
}


class LColorFiltered extends StatelessWidget {
  const LColorFiltered({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlutterLogo(
              size: 75,
            ),
            ColorFiltered(
              colorFilter: ColorFilter.linearToSrgbGamma(),
              child: FlutterLogo(
                size: 75,
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.srgbToLinearGamma(),
              child: FlutterLogo(
                size: 75,
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.amber, BlendMode.modulate),
              child: FlutterLogo(
                size: 75,
              ),
            )
          ],
        ),
      ),
    );
  }
}

