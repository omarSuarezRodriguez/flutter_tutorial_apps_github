
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AlignmentWidgetExample extends StatelessWidget {
  const AlignmentWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alignment Widget') ,
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/24_alignment_widget.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: AlignmentWidget(),
      ),
    );
  }

}






class AlignmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlignmentWidget();
  }
}

class AlignmentWidget extends StatefulWidget {
  const AlignmentWidget({super.key});

  

  @override
  _AlignmentWidgetState createState() => _AlignmentWidgetState();
}

class _AlignmentWidgetState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            color: Colors.yellowAccent,
            height: 150.0,
            width: 150.0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ),
          Container(
            color: Colors.greenAccent,
            height: 150.0,
            width: 150.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            height: 150.0,
            width: 150.0,
            child: Align(
              alignment: Alignment.topCenter,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
