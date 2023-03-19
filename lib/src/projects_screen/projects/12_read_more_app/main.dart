import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMoreAppExample extends StatelessWidget {
  const ReadMoreAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Read More App')),
      body: const Center(
        child: DemoApp(),
      ),
    );
  }
}


class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text(
      //   'Read More Text',
      //   style: TextStyle(color: Colors.white),
      // )),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                key: const Key('showMore'),
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 2,
                  preDataText: "AMANDA",
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter has its own UI components, along witalong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialonalong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engialong with an engig with an engialong with an engialong with an engialong with an engih an engine to render them on both the Android and iOS platforms. Most of those UI components, right out of the box, conform to the guidelines of Material Design.',
                  trimLines: 3,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Expand',
                  trimExpandedText: ' Collapse ',
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                  trimLines: 2,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Read more',
                  trimExpandedText: ' Less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}