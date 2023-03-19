import 'package:flutter/material.dart';

class LPaddingExample extends StatelessWidget {
  const LPaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding Example')),
      body: const Center(
        child: LPadding(),
      ),
    );
  }
}
class LPadding extends StatelessWidget {
  const LPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.orange,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0, top: 16.0),
                  child: Container(
                    color: Colors.yellow,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 16.0, left: 16.0),
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

