import 'package:flutter/material.dart';

class LLayoutBuilderExample extends StatelessWidget {
  const LLayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Builder')),
      body: const Center(
        child: LLayoutBuilder(),
      ),
    );
  }
}


class LLayoutBuilder extends StatelessWidget {
  const LLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxHeight < 500 || constraints.maxWidth > 500) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(color: Colors.greenAccent),
                ),
                Expanded(
                  child: Container(color: Colors.orange),
                ),
                Expanded(
                  child: Container(color: Colors.yellow),
                ),
                Expanded(
                  child: Container(color: Colors.lightBlueAccent),
                )
              ],
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(color: Colors.greenAccent),
                ),
                Expanded(
                  child: Container(color: Colors.orange),
                ),
                Expanded(
                  child: Container(color: Colors.yellow),
                ),
                Expanded(
                  child: Container(color: Colors.lightBlueAccent),
                )
              ],
            );
          }
        },
      ),
    );
  }
}

