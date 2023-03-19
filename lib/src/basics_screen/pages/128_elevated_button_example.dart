import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SElevatedButtonExample extends StatelessWidget {
  const SElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/128_elevated_button_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: SElevatedButton(),
      ),
    );
  }
}



class SElevatedButton extends StatefulWidget {
  const SElevatedButton({Key? key}) : super(key: key);

  @override
  State<SElevatedButton> createState() => _SElevatedButtonState();
}

class _SElevatedButtonState extends State<SElevatedButton> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}