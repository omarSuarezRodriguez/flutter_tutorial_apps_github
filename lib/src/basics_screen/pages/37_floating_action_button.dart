import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/37_floating_action_button.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LFloatingActionButton(),
      ),
    );
  }
}

enum POSITIONS { endDocked, centerFloat, endFloat, centerDocked }

class LFloatingActionButton extends StatefulWidget {
  const LFloatingActionButton({super.key});

  @override
  _LFloatingActionButtonState createState() => _LFloatingActionButtonState();
}

class _LFloatingActionButtonState extends State<LFloatingActionButton> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  POSITIONS? _character = POSITIONS.centerDocked;
  bool? _isNotched = false;
  bool? _isMini = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              title: Text("Mini"),
              leading: Checkbox(
                value: _isMini,
                onChanged: (bool) => {
                  setState(() {
                    _isMini = bool;
                  })
                },
              ),
            ),
            ListTile(
              title: Text("Bottom Notch"),
              leading: Checkbox(
                value: _isNotched,
                onChanged: (bool) => {
                  setState(() {
                    _isNotched = bool;
                  })
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Center Docked"),
              leading: Radio(
                value: POSITIONS.centerDocked,
                groupValue: _character,
                onChanged: (POSITIONS? value) {
                  setState(() {
                    _character = value;
                    _fabLocation = FloatingActionButtonLocation.centerDocked;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("End Docked"),
              leading: Radio(
                value: POSITIONS.endDocked,
                groupValue: _character,
                onChanged: (POSITIONS? value) {
                  setState(() {
                    _character = value;
                    _fabLocation = FloatingActionButtonLocation.endDocked;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("End Float"),
              leading: Radio(
                value: POSITIONS.endFloat,
                groupValue: _character,
                onChanged: (POSITIONS? value) {
                  setState(() {
                    _character = value;
                    _fabLocation = FloatingActionButtonLocation.endFloat;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Center Float"),
              leading: Radio(
                value: POSITIONS.centerFloat,
                groupValue: _character,
                onChanged: (POSITIONS? value) {
                  setState(() {
                    _character = value;
                    _fabLocation = FloatingActionButtonLocation.centerFloat;
                  });
                },
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), mini: this._isMini!, onPressed: () => {}),
        floatingActionButtonLocation: this._fabLocation,
        bottomNavigationBar: BottomAppBar(
          shape: _isNotched! ? CircularNotchedRectangle() : null,
          child: Container(
            height: 50.0,
          ),
        ),
      ),
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
