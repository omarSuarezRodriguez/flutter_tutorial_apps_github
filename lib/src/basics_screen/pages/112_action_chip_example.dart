import 'package:flutter/material.dart';

class LActionChipExample extends StatelessWidget {
  const LActionChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Action Chip')),
      body: const Center(
        child: LActionChip(),
      ),
    );
  }
}



class LActionChip extends StatelessWidget {
  const LActionChip({super.key});

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        'Clicked',
      ),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ActionChip(
            label: const Text('Action Chip'),
            onPressed: () {
              showSnackBar(context);
            }),
        ActionChip(
            label: const Text('Action Chip having tooltip'),
            tooltip: 'This is tooltip',
            onPressed: () {
              showSnackBar(context);
            }),
        ActionChip(
            label: const Text('Action Chip with icon'),
            avatar: const Icon(Icons.accessibility_outlined),
            onPressed: () {
              showSnackBar(context);
            }),
        ActionChip(
            label: const Text('Action Chip with custom color'),
            labelStyle: const TextStyle(color: Colors.white),
            avatar: const Icon(Icons.color_lens_outlined, color: Colors.white),
            backgroundColor: Colors.deepPurple,
            onPressed: () {
              showSnackBar(context);
            }),
        ActionChip(
            label: const Text('Action Chip with Elevation'),
            avatar: const Icon(Icons.ac_unit_outlined),
            elevation: 10,
            pressElevation: 5,
            shadowColor: Colors.teal,
            onPressed: () {
              showSnackBar(context);
            })
      ],
    );
  }
}

