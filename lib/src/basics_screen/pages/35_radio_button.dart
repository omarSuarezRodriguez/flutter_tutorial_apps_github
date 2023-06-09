import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RadioButtonExample extends StatelessWidget {
  const RadioButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/35_radio_button.dart'),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: LRadio(),
      ),
    );
  }
}

class LRadio extends StatefulWidget {
  const LRadio({super.key});

  @override
  _LRadioState createState() => _LRadioState();
}

class _LRadioState extends State<LRadio> {
  String? _group1SelectedValue;
  String? _group2SelectedValue;

  @override
  void initState() {
    _group1SelectedValue = "1";
    _group2SelectedValue = "A";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Selected Number: ",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                      TextSpan(
                          text: '$_group1SelectedValue ',
                          style: TextStyle(fontSize: 24)),
                    ]))),
                ListTile(
                  title: Text("1"),
                  leading: Radio(
                      value: "1",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes),
                ),
                ListTile(
                  title: Text("2"),
                  leading: Radio(
                      value: "2",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes),
                ),
                ListTile(
                  title: Text("3"),
                  leading: Radio(
                      value: "3",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes),
                ),
                ListTile(
                  title: Text("4"),
                  leading: Radio(
                      value: "4",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes),
                ),
                ListTile(
                  title: Text("5"),
                  leading: Radio(
                      value: "5",
                      groupValue: _group1SelectedValue,
                      onChanged: _group1Changes),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Selected Character: ",
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                      TextSpan(
                          text: '$_group2SelectedValue ',
                          style: TextStyle(fontSize: 24)),
                    ]))),
                ListTile(
                  title: Text("A"),
                  leading: Radio(
                      value: "A",
                      groupValue: _group2SelectedValue,
                      onChanged: _group2Changes),
                ),
                ListTile(
                  title: Text("B"),
                  leading: Radio(
                      value: "B",
                      groupValue: _group2SelectedValue,
                      onChanged: _group2Changes),
                ),
                ListTile(
                  title: Text("C"),
                  leading: Radio(
                      value: "C",
                      groupValue: _group2SelectedValue,
                      onChanged: _group2Changes),
                ),
                ListTile(
                  title: Text("D"),
                  leading: Radio(
                      value: "D",
                      groupValue: _group2SelectedValue,
                      onChanged: _group2Changes),
                ),
                ListTile(
                  title: Text("E"),
                  leading: Radio(
                      value: "E",
                      groupValue: _group2SelectedValue,
                      onChanged: _group2Changes),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _group1Changes(String? value) {
    setState(() {
      _group1SelectedValue = value;
    });
  }

  void _group2Changes(String? value) {
    setState(() {
      _group2SelectedValue = value;
    });
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
