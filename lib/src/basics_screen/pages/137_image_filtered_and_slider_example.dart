import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

class ImageFilteredExampleBasics extends StatelessWidget {
  const ImageFilteredExampleBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Filtered And Slider'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/137_image_filtered_and_slider_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: ImageFilteredExample(),
      ),
    );
  }
}



class ImageFilteredExample extends StatefulWidget {
  const ImageFilteredExample({super.key});

  @override
  _ImageFilteredExampleState createState() => _ImageFilteredExampleState();
}

class _ImageFilteredExampleState extends State<ImageFilteredExample> {
  double _sigmaX = 0, _sigmaY = 0;
  double _rotZ = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(4),
      children: [
        ImageFiltered(
          // Compose two image filters: result = outer(inner(source)).
          // ImageFilter.compose(...)
          // ! -- ImageFilter.compose Doesn't work??
          // ! https://dartpad.dev/?id=a39eeefa873b62f63e4f3516c2d04b09
          imageFilter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
          child: Image.network('https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
        ),
        ImageFiltered(
          imageFilter: ImageFilter.matrix(Matrix4.rotationZ(_rotZ).storage),
          child: const Text(
            'Not only can images be "filtered", in fact any widget '
            'can be placed under ImageFiltered!',
          ),
        ),
        const Divider(),
        ..._controlWidgets(),
      ],
    );
  }

  /// Widgets to control the parameters.
  List<Widget> _controlWidgets() {
    return [
      Row(
        children: [
          const Text('sigmaX:'),
          Expanded(
            child: Slider(
              max: 20,
              value: _sigmaX,
              onChanged: (val) {
                setState(() => this._sigmaX = val);
              },
            ),
          ),
          Text(_sigmaX.toStringAsFixed(1)),
        ],
      ),
      Row(
        children: [
          const Text('sigmaY:'),
          Expanded(
            child: Slider(
              max: 20,
              value: _sigmaY,
              onChanged: (val) {
                setState(() => this._sigmaY = val);
              },
            ),
          ),
          Text(_sigmaY.toStringAsFixed(1)),
        ],
      ),
      Row(
        children: [
          const Text('rotationZ:'),
          Expanded(
            child: Slider(
              min: -1.6,
              max: 1.6,
              value: _rotZ,
              onChanged: (val) {
                setState(() => this._rotZ = val);
              },
            ),
          ),
          Text(_rotZ.toStringAsFixed(1)),
        ],
      )
    ];
  }
}
