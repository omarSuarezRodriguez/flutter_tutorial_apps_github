import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GridImageExample extends StatelessWidget {
  const GridImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CossFade'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/77_grid_image_example.dart'),
              );
            },
          ),
        ],
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) => GridTile(
        header: const GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.person),
          title: Text('Flutter Mapp'),
          trailing: Icon(Icons.menu),
        ),
        // child: FlutterLogo(
        //   style: FlutterLogoStyle.stacked,
        //   // size: ,
        // ),
        child: Image.network(
          'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png',
          fit: BoxFit.contain,
        ),
        footer: const GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.favorite),
        ),
      ),
    );
  }
}
