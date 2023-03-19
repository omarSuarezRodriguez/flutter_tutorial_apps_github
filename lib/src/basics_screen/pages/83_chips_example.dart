import 'package:flutter/material.dart';

class LChipExample extends StatelessWidget {
  const LChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LChip Example')),
      body: const Center(
        child: LChip(),
      ),
    );
  }
}



class LChip extends StatelessWidget {
  const LChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 16.0,
        runSpacing: 16.0,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: const Text('FT')),
            label: const Text('Flutter Tutorial'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(Icons.share)),
            label: const Text('Share'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(Icons.camera)),
            label: const Text('Camera'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Theme
                    .of(context)
                    .primaryColor,
                child: const Text('F')),
            label: const Text('Feedback'),
          ),
        ],
      ),
    );
  }
}
