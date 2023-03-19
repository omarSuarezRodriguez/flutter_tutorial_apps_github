import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StackExampleThree extends StatelessWidget {
  const StackExampleThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Example'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/140_stack_example_three.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: StackExample(),
      ),
    );
  }
}


class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  AlignmentDirectional _alignmentDirectional = AlignmentDirectional.topStart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: _alignmentDirectional,
          children: <Widget>[
            Container(width: 300.0, height: 300.0, color: Colors.red),
            Container(width: 200.0, height: 200.0, color: Colors.green),
            Container(width: 100.0, height: 100.0, color: Colors.blue),
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    const kAlignmentDirectionalVals = <String, AlignmentDirectional>{
      'topStart': AlignmentDirectional.topStart,
      'topCenter': AlignmentDirectional.topCenter,
      'topEnd': AlignmentDirectional.topEnd,
      'centerStart': AlignmentDirectional.centerStart,
      'center': AlignmentDirectional.center,
      'centerEnd': AlignmentDirectional.centerEnd,
      'bottomStart': AlignmentDirectional.bottomStart,
      'bottomCenter': AlignmentDirectional.bottomCenter,
      'bottomEnd': AlignmentDirectional.bottomEnd
    };
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text('alignmentDirectional:'),
            trailing: DropdownButton<AlignmentDirectional>(
              value: _alignmentDirectional,
              onChanged: (AlignmentDirectional? newVal) {
                if (newVal != null) {
                  setState(() => this._alignmentDirectional = newVal);
                }
              },
              items: kAlignmentDirectionalVals
                  .map(
                    (String name, AlignmentDirectional val) => MapEntry(
                      name,
                      DropdownMenuItem(value: val, child: Text(name)),
                    ),
                  )
                  .values
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
