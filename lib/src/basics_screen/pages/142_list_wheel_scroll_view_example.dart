import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListWheelViewBasicsExample extends StatelessWidget {
  const ListWheelViewBasicsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Wheel View'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/142_list_wheel_scroll_view_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: ListWheelViewExample(),
      ),
    );
  }
}


class ListWheelViewExample extends StatefulWidget {
  const ListWheelViewExample({super.key});

  @override
  _ListWheelViewExampleState createState() => _ListWheelViewExampleState();
}

class _ListWheelViewExampleState extends State<ListWheelViewExample> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 75,
      childDelegate: ListWheelChildBuilderDelegate(
        builder: (BuildContext context, int index) {
          if (index < 0 || index > 8) {
            return null;
          }
          return ListTile(
            leading: Text(
              "$index",
              style: TextStyle(fontSize: 50),
            ),
            title: Text("Title $index"),
            subtitle: Text('Description here'),
          );
        },
      ),
    );
  }
}
