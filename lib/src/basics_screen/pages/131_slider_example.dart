import 'package:flutter/material.dart';

class SSliderExample extends StatelessWidget {
  const SSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
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