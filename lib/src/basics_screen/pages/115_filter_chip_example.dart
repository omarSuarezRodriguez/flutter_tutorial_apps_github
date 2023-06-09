import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LFilterChipExample extends StatelessWidget {
  const LFilterChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Chip'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/115_filter_chip_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LFilterChip(),
      ),
    );
  }
}


class LFilterChip extends StatefulWidget {
  const LFilterChip({super.key});

  @override
  _LFilterChipState createState() => new _LFilterChipState();
}

class _LFilterChipState extends State<LFilterChip> {
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
  var selected = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataList.length,
      itemBuilder: (BuildContext context, int index) => FilterChip(
        label: Text(_dataList[index]),
        onSelected: (bool value) {
          if (selected.contains(index)) {
            selected.remove(index);
          } else {
            selected.add(index);
          }
          setState(() {});
        },
        selected: selected.contains(index),
        selectedColor: Colors.deepOrange,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}


