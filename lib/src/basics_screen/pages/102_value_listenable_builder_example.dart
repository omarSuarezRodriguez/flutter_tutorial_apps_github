import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LValueListenableBuilderExample extends StatelessWidget {
  const LValueListenableBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Value Listenable Builder'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/102_value_listenable_builder_example.dart'),
              );
            },
          ),
        ],),
      body: Center(
        child: LValueListenableBuilder(),
      ),
    );
  }
}


class LValueListenableBuilder extends StatelessWidget {
  LValueListenableBuilder({super.key});
  final ValueNotifier<int> _counter = ValueNotifier<int>(1);

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _counter.value = 1;
                  },
                  child: Text("x1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _counter.value = 2;
                  },
                  child: Text("x2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _counter.value = 3;
                  },
                  child: Text("x3"),
                ),
              ],
            ),
            ValueListenableBuilder(
              builder: (BuildContext context, int value, Widget? child) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: child,
                    ),
                    Column(
                      children: List.generate(
                          10,
                          (index) => Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "$value * $index = " +
                                      (value * index).toString(),
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                ),
                              )),
                    ),
                  ],
                );
              },
              valueListenable: _counter,
              child: Center(
                  child: Text(
                "Tables",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

