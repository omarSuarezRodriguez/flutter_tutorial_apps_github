import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SelectableTextExample extends StatelessWidget {
  const SelectableTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selectable Text and Placeholder'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_apps_with_package/blob/main/lib/src/basics_screen/pages/34_selectable_text.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LSelectableText(),
      ),
    );
  }
}

class LSelectableText extends StatelessWidget {
  const LSelectableText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Placeholder(),
        SelectableText(
          'Long Press Me, I am Selectable',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SelectableText.rich(
          TextSpan(
            text: 'Hi, ', // default text style
            children: <TextSpan>[
              TextSpan(
                  text: ' I am Selectable. \n\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontStyle: FontStyle.italic)),
              TextSpan(
                  text: 'Long Press',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
              TextSpan(
                text: ' and  copy  me.',
                style: TextStyle(letterSpacing: 3, fontSize: 16),
              ),
            ],
          ),
        )
      ],
    );
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
