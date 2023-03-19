import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class FutureBuilderExampleBasics extends StatelessWidget {
  const FutureBuilderExampleBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Builder'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/144_future_builder_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: FutureBuilderExample(),
      ),
    );
  }
}



class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  FutureBuilderExampleState createState() => FutureBuilderExampleState();
}

class FutureBuilderExampleState extends State<FutureBuilderExample> {
  Future<ByteData> _wait3SecAndLoadImage() async {
    await Future.delayed(const Duration(seconds: 3));
    return rootBundle.load('res/images/dart-side.png');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'In this example we first have an async operatio that takes '
            '~3 seconds and succeeds with the content of an image from asset.\n'
            'Note this is just for demonstration purposes, normally we just '
            'use `Image.asset()`.',
          ),
          FutureBuilder<ByteData>(
            future: _wait3SecAndLoadImage(),
            builder: (BuildContext context, AsyncSnapshot<ByteData> snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                // This shouldn't happen in our case, but good to handle errors.
                return const Text('Error has happened in the future!');
              } else {
                return Image.memory(snapshot.data!.buffer.asUint8List());
              }
            },
          ),
        ],
      ),
    );
  }
}
