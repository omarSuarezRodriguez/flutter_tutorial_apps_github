import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageWithTitleAndFooterExample extends StatelessWidget {
  const ImageWithTitleAndFooterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated CossFade'),
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/78_image_with_title_and_bottom.dart'),
              );
            },
          ),
        ],),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        width: 300,
        child: GridTile(
          header: Container(
            height: 40,
            child: const Center(
              child: Text('Header'),
            ),
            color: Colors.black38,
          ),
          footer: Container(
            height: 40,
            child: const Center(
              child: Text('Footer'),
            ),
            color: Colors.black38,
          ),
          child: Image.network(
            'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
