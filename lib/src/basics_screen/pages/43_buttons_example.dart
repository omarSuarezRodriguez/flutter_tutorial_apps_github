import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonsExampleOne extends StatelessWidget {
  const ButtonsExampleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/43_buttons_example.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LButtonWidget(),
      ),
    );
  }
}

class LButtonWidget extends StatelessWidget {
  const LButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton(
            child: Text("Text Button"),
            onPressed: () {},
          ),

          ElevatedButton(
            child: Text("Elevated Button"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.sms_failed,
              color: Colors.blue,
              size: 36,
            ),
            tooltip: 'Image Button',
            onPressed: () {},
          ),

//For Ripple Effect Ink Well is used
          Material(
            //  needed
            color: Colors.orange,
            child: InkWell(
              onTap: () {},
              child: Container(width: 80.0, height: 40.0),
            ),
          ),
          RawMaterialButton(
            child: Icon(
              Icons.play_arrow,
              color: Colors.limeAccent,
            ),
            onPressed: () {},
            shape: CircleBorder(),
            elevation: 2,
            splashColor: Colors.transparent,
            fillColor: Colors.deepPurpleAccent,
            highlightColor: Colors.transparent,
          ),
          BackButton(
            onPressed: () {},
          ),
          CloseButton(
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
