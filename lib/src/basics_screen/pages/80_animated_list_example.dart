import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedListExample extends StatelessWidget {
  const AnimatedListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/80_animated_list_example.dart'),
              );
            },
          ),
        ],
      ),
      body: LAnimatedList(),
    );
  }
}

class LAnimatedList extends StatefulWidget {
  const LAnimatedList({super.key});
  @override
  LAnimatedListState createState() {
    return new LAnimatedListState();
  }
}

class LAnimatedListState extends State<LAnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  List<String> _data = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder: (context, index, animation) =>
                _buildItem(context, _data[index], animation),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                _addAnItem();
              },
            ),
            ElevatedButton(
              child: Text(
                'Remove',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                _removeLastItem();
              },
            ),
          ],
        )
      ],
    );
  }

  Widget _buildItem(
      BuildContext context, String item, Animation<double> animation) {
    TextStyle textStyle = new TextStyle(fontSize: 20);

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.vertical,
        child: SizedBox(
          height: 50.0,
          child: Card(
            child: Center(
              child: Text(item, style: textStyle),
            ),
          ),
        ),
      ),
    );
  }

  void _addAnItem() {
    _data.insert(0, "Inserted Item");
    _listKey.currentState!.insertItem(0);
  }

  void _removeLastItem() {
    String itemToRemove = _data[0];

    _listKey.currentState!.removeItem(
      0,
      (BuildContext context, Animation<double> animation) =>
          _buildItem(context, itemToRemove, animation),
      duration: const Duration(milliseconds: 250),
    );

    _data.removeAt(0);
  }
}
