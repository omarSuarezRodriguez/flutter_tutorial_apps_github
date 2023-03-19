import 'dart:async';

import 'package:flutter/material.dart';

class LRefreshIndicatorExample extends StatelessWidget {
  const LRefreshIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Refresh Indicator')),
      body: Center(
        child: LRefreshIndicator(),
      ),
    );
  }
}


class LRefreshIndicator extends StatelessWidget {
  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  LRefreshIndicator({super.key});
  Widget _listBuilder() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: colorCodes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: Colors.amber[colorCodes[index % 10]],
            title: Center(
                child: Text('Color shade AMBER - ' +
                    colorCodes[index % 10].toString())),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: _refresh,
        color: Colors.yellow,
        backgroundColor: Colors.red,
        strokeWidth: 4,
        displacement: 100,
        child: _listBuilder(),
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(Duration(seconds: 4));
  }
}

