import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LFlutterLogoExample extends StatelessWidget {
  const LFlutterLogoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Logo Animations'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/120_flutter_logo_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LFlutterLogo(),
      ),
    );
  }
}


class LFlutterLogo extends StatefulWidget {
  const LFlutterLogo({Key? key}) : super(key: key);

  @override
  _LFlutterLogoState createState() => _LFlutterLogoState();
}

class _LFlutterLogoState extends State<LFlutterLogo> {
  double size = 100;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterLogo(
            size: size,
            curve: Curves.elasticInOut,
            duration: Duration(seconds: 5),
            textColor: Colors.teal,
          ),
          FlutterLogo(
            size: size,
            style: FlutterLogoStyle.horizontal,
            curve: Curves.easeInOutCubic,
            duration: Duration(seconds: 5),
            textColor: Colors.teal,
          ),
          FlutterLogo(
            size: size,
            style: FlutterLogoStyle.stacked,
            curve: Curves.bounceInOut,
            duration: Duration(seconds: 5),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  size = size + 100;
                  if (size >= 300) {
                    size = 100;
                  }
                });
              },
              child: Text("Click Here!"))
        ],
      ),
    );
  }
}
