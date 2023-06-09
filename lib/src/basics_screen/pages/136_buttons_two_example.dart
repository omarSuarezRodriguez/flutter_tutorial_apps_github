import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonsExampleTwo extends StatelessWidget {
  const ButtonsExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Example Two'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/136_buttons_two_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: ButtonsExample(),
      ),
    );
  }
}


class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    // void _showToast() => Fluttertoast.showToast(
    //       msg: 'Button tapped',
    //       toastLength: Toast.LENGTH_SHORT,
    //     );

    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: <Widget>[
        Column(
          children: <Widget>[
            const Text(
              'Raised buttons add dimension to mostly flat layouts. They '
              'emphasize functions on busy or wide spaces.',
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _showSnack,
                  child: const Text('ElevatedButton'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('disabled-ElevatedButton'),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: <Widget>[
            const Text(
              'A flat button displays an ink splash on press '
              'but does not lift. Use flat buttons on toolbars, in dialogs '
              'and inline with padding',
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  // onPressed: _showToast,
                  child: const Text('TextButton'),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text('disabled-TextButton'),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: <Widget>[
            const Text(
              'Outline buttons become opaque and elevate when pressed. They '
              'are often paired with raised buttons to indicate an '
              'alternative, secondary action.',
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {},
                  // onPressed: _showToast,
                  child: const Text('OutlineButton'),
                ),
                const OutlinedButton(
                  onPressed: null,
                  child: Text('OutlineButton'),
                )
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: <Widget>[
            const Text(
              'Tooltips are short identifying messages that briefly appear '
              'in response to a long press. Tooltip messages are also used '
              'by services that make Flutter apps accessible, like screen '
              'readers.',
            ),
            Center(
              child: IconButton(
                iconSize: 32.0,
                icon: const Icon(Icons.call),
                tooltip: 'Place a phone call',
                onPressed: _showSnack,
              ),
            )
          ],
        ),
      ],
    );
  }
}
