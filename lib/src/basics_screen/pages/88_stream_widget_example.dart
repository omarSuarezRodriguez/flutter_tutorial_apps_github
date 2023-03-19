import 'package:flutter/material.dart';
import 'dart:async';

class LStreamBuilderExample extends StatelessWidget {
  const LStreamBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Builder Widget')),
      body: const Center(
        child: LStreamBuilder(),
      ),
    );
  }
}


class LStreamBuilder extends StatelessWidget {
  const LStreamBuilder({super.key});

  Stream<int> counter() async* {
    int i = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield i++;
      if (i == 100) break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: counter(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text("Intializing...");
          }
          return Text("${snapshot.data}", style: TextStyle(fontSize: 40));
        },
      ),
    );
  }
}

