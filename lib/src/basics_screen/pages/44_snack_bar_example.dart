import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/44_snack_bar_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LSnackBar(),
      ),
    );
  }
}

class LSnackBar extends StatelessWidget {
  const LSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          ElevatedButton(
            child: const Text('Simple SnackBar'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Simple SnackBar'),
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Colored SnackBar - 0.5 Seconds'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'SnackBar for 0.5 seconds',
                    style: TextStyle(color: Colors.red),
                  ),
                  duration: Duration(milliseconds: 500),
                  backgroundColor: Colors.lightGreenAccent,
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('SnackBar with image'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        ' Hai',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  duration: const Duration(seconds: 1),
                  backgroundColor: Colors.limeAccent,
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
