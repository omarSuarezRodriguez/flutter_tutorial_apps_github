import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SSliderExample extends StatelessWidget {
  const SSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/131_slider_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: SSlider(),
      ),
    );
  }
}


class SSlider extends StatefulWidget {
  const SSlider({Key? key}) : super(key: key);

  @override
  State<SSlider> createState() => _SSliderState();
}

class _SSliderState extends State<SSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}