import 'package:flutter/material.dart';

class LIgnorePointerExample extends StatelessWidget {
  const LIgnorePointerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ignore Pointer')),
      body: const Center(
        child: LIgnorePointer(),
      ),
    );
  }
}


class LIgnorePointer extends StatefulWidget {
  const LIgnorePointer({super.key});

  @override
  _LIgnorePointerState createState() => _LIgnorePointerState();
}

class _LIgnorePointerState extends State<LIgnorePointer> {
  late var txtString;

  @override
  void initState() {
    super.initState();
    setState(() {
      txtString = "Touch above container";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                child: Container(color: Colors.pink),
                onTap: () {
                  setState(() {
                    txtString = "You Touched Pink Container";
                  });
                },
              ),
              IgnorePointer(
                ignoring: true,
                child: InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.yellow,
                    child: Center(
                      child: Text("I am invisible to hit testing"),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      txtString = "You Touched Yellow Container";
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            txtString,
            style: TextStyle(fontSize: 18),
          ),
        ))
      ],
    );
  }
}

