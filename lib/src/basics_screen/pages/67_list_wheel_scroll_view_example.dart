import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListWheelScrollViewExample extends StatelessWidget {
  const ListWheelScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    // imageCache.clear();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Wheel Scroll View'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/67_list_wheel_scroll_view_example.dart'),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 120.0,
          children: [
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
          ],
          diameterRatio: 1,
        ),
      ),
    );
  }
}
