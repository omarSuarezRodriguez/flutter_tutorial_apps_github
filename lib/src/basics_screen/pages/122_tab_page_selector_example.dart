import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LTabPageSelectorExample extends StatelessWidget {
  const LTabPageSelectorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab Page Selector'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/122_tab_page_selector_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LTabPageSelector(),
      ),
    );
  }
}


class LTabPageSelector extends StatefulWidget {
  const LTabPageSelector({super.key});

  @override
  State<LTabPageSelector> createState() => _LTabPageSelectorState();
}

class _LTabPageSelectorState extends State<LTabPageSelector>
    with SingleTickerProviderStateMixin {
  final int _numDots = 6;
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _numDots, vsync: this);
  }

  void _moveNext() {
    setState(() {
      (_controller.index == _numDots - 1)
          ? _controller.index = 0
          : _controller.index++;
    });
  }

  List<Widget> widgets = [
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.yellow,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.grey,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.green,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.amber,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.teal,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widgets[_controller.index],
          TabPageSelector(controller: _controller),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(onPressed: _moveNext, child: Text("Next")),
          )
        ],
      ),
    );
  }
}

