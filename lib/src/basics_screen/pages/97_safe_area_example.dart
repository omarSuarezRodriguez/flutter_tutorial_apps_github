import 'package:flutter/material.dart';

class LSafeAreaExample extends StatelessWidget {
  const LSafeAreaExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Safe Area Example')),
      body: const Center(
        child: LSafeArea(),
      ),
    );
  }
}
class LSafeArea extends StatefulWidget {
  const LSafeArea({super.key});

  @override
  _LSafeAreaState createState() => _LSafeAreaState();
}

class _LSafeAreaState extends State<LSafeArea> {
  var _isInSafeArea = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: _isInSafeArea,
      bottom: _isInSafeArea,
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Top text for testing the safe area.Switch to full screen view in notch mobile to test SafeArea",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isInSafeArea = !_isInSafeArea;
                    });
                  },
                  child: Text(_isInSafeArea
                      ? "SafeArea  Enabled"
                      : "SafeArea Disabled"),
                ),
              ),
            ),
            Text(
              "Bottom text for testing the safe area.",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
