import 'package:flutter/material.dart';

class ReorderableListBasicsExample extends StatelessWidget {
  const ReorderableListBasicsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reorderable List')),
      body: const Center(
        child: ReorderableListExample(),
      ),
    );
  }
}


class ReorderableListExample extends StatefulWidget {
  const ReorderableListExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ReorderableListExampleState();
  }
}

class _ReorderableListExampleState extends State<ReorderableListExample> {
  bool _reverseSort = false;
  final List<String> _items = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').toList();

  // Handler called by ReorderableListView onReorder after a list child is
  // dropped into a new position.
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex;
      final item = _items.removeAt(oldIndex);
      _items.insert(newIdx, item);
    });
  }

  // Handler called when the "sort" button on appbar is clicked.
  void _onSort() {
    setState(() {
      _reverseSort = !_reverseSort;
      _items.sort((a, b) => _reverseSort ? b.compareTo(a) : a.compareTo(b));
    });
  }

  @override
  Widget build(BuildContext context) {
    final _appbar = AppBar(
      title: const Text('Reorderable list'),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.sort_by_alpha),
          tooltip: 'Sort',
          onPressed: _onSort,
        ),
      ],
    );
    return Scaffold(
      appBar: _appbar,
      body: ReorderableListView(
        onReorder: _onReorder,
        children: [
          for (final item in _items)
            ListTile(
              /// ! Must provide unique Keys for ReorderableListView's children.
              key: Key(item),
              title: Text('item $item'),
            )
        ],
      ),
    );
  }
}
