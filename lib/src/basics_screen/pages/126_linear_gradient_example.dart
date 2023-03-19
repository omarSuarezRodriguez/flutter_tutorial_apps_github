import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LLinearGradientExample extends StatelessWidget {
  const LLinearGradientExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Linear Gradient'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/126_linear_gradient_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LLinearGradient(),
      ),
    );
  }
}


class LLinearGradient extends StatelessWidget {
  const LLinearGradient({super.key});

   @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.redAccent,
            Colors.yellow,
            Colors.orangeAccent
          ],

          begin: Alignment.topRight,
          end: Alignment.bottomLeft
        )
      ),

    );
  }
}


