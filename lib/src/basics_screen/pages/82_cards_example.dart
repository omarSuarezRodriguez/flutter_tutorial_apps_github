import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardsExamplePage extends StatelessWidget {
  const CardsExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/82_cards_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LCard(),
      ),
    );
  }
}

class LCard extends StatelessWidget {
  const LCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Sample Card 1'),
                    subtitle: Text('Default Elevation'),
                  ),
                ),
                Card(
                    elevation: 8,
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 2'),
                      subtitle: Text('Elevation - 8'),
                    )),
                Card(
                    elevation: 16,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 3'),
                      subtitle: Text('Elevation - 16'),
                    )),
                Card(
                    elevation: 24,
                    color: Colors.pink,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sample Card 4'),
                      subtitle: Text('Elevation - 24'),
                    )),
                Stack(
                  children: <Widget>[
                    Card(
                        child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 1 in Stack'),
                      subtitle: Text('Default Elevation'),
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 8),
                      child: Card(
                          elevation: 8,
                          child: ListTile(
                            leading: Icon(Icons.camera),
                            title: Text('Sample Card 2 in Stack'),
                            subtitle: Text('Elevation - 8'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 32, 16, 16),
                      child: Card(
                          elevation: 16,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 3 in Stack'),
                            subtitle: Text('Elevation - 16'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 48, 24, 24),
                      child: Card(
                          elevation: 24,
                          child: ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Sample Card 4 in Stack'),
                            subtitle: Text('Elevation - 24'),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
