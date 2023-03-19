import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LMouseRegionExample extends StatelessWidget {
  const LMouseRegionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mouse Region'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/121_mouse_region_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LMouseRegion(),
      ),
    );
  }
}


class LMouseRegion extends StatefulWidget {
  const LMouseRegion({super.key});

  @override
  _LMouseRegionState createState() => _LMouseRegionState();
}

class _LMouseRegionState extends State<LMouseRegion> {
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          x = event.position.dx;
          y = event.position.dy;
        });
      },
      cursor: SystemMouseCursors.basic,
      child: Container(
        child: Center(
          child: Text(
            'You touched at: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
          ),
        ),
      ),
    );
  }
}

