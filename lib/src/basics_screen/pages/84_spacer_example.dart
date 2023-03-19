import 'package:flutter/material.dart';

class LSpacerExample extends StatelessWidget {
  const LSpacerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LSpacer Example')),
      body: const Center(
        child: LSpacer(),
      ),
    );
  }
}

class LSpacer extends StatelessWidget {
  const LSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 10,
              ),
              Text("Roll to this side")
            ]),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 10,
              ),
              Icon(Icons.camera),
            ]),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 4,
              ),
              Icon(Icons.camera),
              Spacer(
                flex: 6,
              ),
              Icon(Icons.camera),
            ]),
            Divider(),
            Row(
              children: <Widget>[
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(
                  flex: 6,
                ),
                Icon(Icons.camera),
                Spacer(
                  flex: 4,
                ),
                Icon(Icons.camera),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(Icons.camera),
                Spacer(
                  flex: 4,
                ),
                Icon(Icons.camera),
                Spacer(
                  flex: 6,
                ),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(Icons.camera),
                Spacer(
                  flex: 8,
                ),
                Icon(Icons.camera),
                Spacer(
                  flex: 2,
                ),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Text("I am empty"),
                Spacer(
                  flex: 6,
                ),
                Icon(Icons.camera),
                Spacer(
                  flex: 4,
                ),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Text("I am empty"),
                Spacer(
                  flex: 10,
                ),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

