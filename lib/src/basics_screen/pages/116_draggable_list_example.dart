import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LDraggableScrollableSheetExample extends StatelessWidget {
  const LDraggableScrollableSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/116_draggable_list_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LDraggableScrollableSheet(),
      ),
    );
  }
}



class LDraggableScrollableSheet extends StatelessWidget {
  const LDraggableScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.amber,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text('Item $index'));
            },
          ),
        );
      },
    );
  }
}


