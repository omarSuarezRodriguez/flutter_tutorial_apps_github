import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LSwitchListTileExample extends StatelessWidget {
  const LSwitchListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch List Tile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/110_switch_list_tile_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LSwitchListTile(),
      ),
    );
  }
}


class LSwitchListTile extends StatefulWidget {
  const LSwitchListTile({super.key});

  @override
  _LSwitchListTileState createState() => _LSwitchListTileState();
}

class _LSwitchListTileState extends State<LSwitchListTile> {
  bool _isSwitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _isSwitchedOn ? Colors.amber : Colors.white,
      child: Center(
        child: SwitchListTile(
          title:
              Text(_isSwitchedOn ? 'Color Switched ON' : "Color Switched OFF"),
          value: _isSwitchedOn,
          onChanged: (bool value) {
            setState(() {
              _isSwitchedOn = value;
            });
          },
          subtitle: Text(_isSwitchedOn ? "Yellow Color" : "White Color"),
          secondary: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}

