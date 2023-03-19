import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LRadioListTileExample extends StatelessWidget {
  const LRadioListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radio List Tile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/108_radio_list_tile_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LRadioListTile(),
      ),
    );
  }
}



class LRadioListTile extends StatefulWidget {
  const LRadioListTile({super.key});

  @override
  _LRadioListTileState createState() => _LRadioListTileState();
}

class _LRadioListTileState extends State<LRadioListTile> {
  Color? _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgColor,
      child: Column(
        children: [
          Text(
            "\nSet background color\n",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          RadioListTile<Color>(
            title: const Text('Green'),
            value: Colors.lightGreen,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Yellow'),
            value: Colors.yellowAccent,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Blue'),
            value: Colors.lightBlueAccent,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('Cyan'),
            value: Colors.cyanAccent,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
          RadioListTile<Color>(
            title: const Text('White'),
            value: Colors.white,
            groupValue: _bgColor,
            onChanged: (Color? value) {
              setState(() {
                _bgColor = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

