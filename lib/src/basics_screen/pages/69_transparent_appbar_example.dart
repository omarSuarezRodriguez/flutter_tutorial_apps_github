import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TransparentAppBarExampleExample extends StatelessWidget {
  const TransparentAppBarExampleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparent AppBar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/69_transparent_appbar_example.dart'),
              );
            },
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparent AppBar'),
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: BackButton(),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Image.network(
            'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
      ),
    );
  }
}
