import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/40_app_bar_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LAppBarWidget(),
      ),
    );
  }
}

final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();
const SnackBar snackBar = SnackBar(content: Text('Notification Clicked'));

class LAppBarWidget extends StatelessWidget {
  const LAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScaffoldMessenger(
        key: scaffoldKey,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar Demo'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  scaffoldKey.currentState!.showSnackBar(snackBar);
                },
              ),
              IconButton(
                icon: const Icon(Icons.close),
                tooltip: 'close',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          body: const Center(
            child: Text(
              'This is the home page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
