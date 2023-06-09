import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroExampleTwo extends StatelessWidget {
  const HeroExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero 2'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/55_hero_example_two.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LHero(),
      ),
    );
  }
}

class LHero extends StatefulWidget {
  const LHero({super.key});

  @override
  _LHeroState createState() => _LHeroState();
}

class _LHeroState extends State<LHero> {
  Widget _smallImage(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }

  Widget _bigImage(Color color) {
    return Container(
      width: 300,
      height: 300,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List<Widget>.generate(10, (index) {
        Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
            .withOpacity(1.0);
        Key _n1 = GlobalKey();
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: GestureDetector(
                key: _n1,
                child: Hero(
                  tag: index.toString(),
                  child: _smallImage(color),
                ),
                onTap: () => _fullImagePage(context, color, index.toString()),
              ),
              title: Text('Tap for transition.'),
            ));
      }),
    );
  }

  void _fullImagePage(BuildContext context, Color color, String tag) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          title: Text("Big Image"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: tag,
                child: _bigImage(color),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
