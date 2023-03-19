import 'package:flutter/material.dart';

class LFlexibleExample extends StatelessWidget {
  const LFlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flexible Example')),
      body: const Center(
        child: LFlexible(),
      ),
    );
  }
}


class LFlexible extends StatelessWidget {
  const LFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
              height: 50,
              child: Center(child: Text("FlexFit Tight")),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      width: 10,
                      color: Colors.red,
                    )),
                Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Container(
                      width: 10,
                      color: Colors.green,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                    )),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.green,
              height: 50,
              child: Center(child: Text("FlexFit Loose")),
            ),
          ),
        ],
      ),
    );
  }
}


