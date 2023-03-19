import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LBuilderSnackbarExample extends StatelessWidget {
  const LBuilderSnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Builder Snackbar Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/101_builder_snackbar_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LBuilder(),
      ),
    );
  }
}


class LBuilder extends StatelessWidget {
  const LBuilder({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return Container(
            child: Center(
              child: ElevatedButton(
                child: const Text('Show Snackbar'),
                onPressed: () {
                  //Without the builder widget, the below code wont work, because of unavailability of builder context
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('SnackBar shown without using scaffold key'),
                    ),
                  );
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}

