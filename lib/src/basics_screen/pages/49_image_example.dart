import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/49_image_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LImage(),
      ),
    );
  }
}

class LImage extends StatelessWidget {
  const LImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Flutter Logo"),
            FlutterLogo(),
            SizedBox(height: 20.0),

            Text("Image from network"),
            // Image.asset("image/logo.png"),
            // NetworkImage('https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
            SizedBox(height: 20.0),

            Text("Image from web"),
            Image.network(
                "https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png"),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
