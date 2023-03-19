import 'package:flutter/material.dart';

class LDraggableScrollableSheetExample extends StatelessWidget {
  const LDraggableScrollableSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable List')),
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


