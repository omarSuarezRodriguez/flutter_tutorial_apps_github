import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LChoiceChipExample extends StatelessWidget {
  const LChoiceChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choice Chip'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/113_choice_chip_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LChoiceChip(),
      ),
    );
  }
}


class LChoiceChip extends StatefulWidget {
  const LChoiceChip({super.key});

  @override
  _LChoiceChipState createState() => new _LChoiceChipState();
}

class _LChoiceChipState extends State<LChoiceChip> {
  var _dataList = [
    'Choice 1',
    'Choice 2',
    'Choice 3',
    'Choice 4',
    'Choice 5',
    'Choice 6',
    'Choice 7',
    'Choice 8'
  ];
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataList.length,
      itemBuilder: (BuildContext context, int index) {
        return ChoiceChip(
          label: Text(_dataList[index]),
          selected: _value == index,
          selectedColor: Colors.amber,
          selectedShadowColor: Colors.red,
          onSelected: (bool value) {
            setState(() {
              _value = value ? index : null;
            });
          },
          backgroundColor: Colors.blue,
          labelStyle: TextStyle(color: Colors.white),
        );
      },
    );
  }
}

