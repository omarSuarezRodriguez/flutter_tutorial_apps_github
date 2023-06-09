import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LCheckboxListTileExample extends StatelessWidget {
  const LCheckboxListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckBox List Tile '),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/111_check_box_list_tile_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LCheckboxListTile(),
      ),
    );
  }
}



class LCheckboxListTile extends StatefulWidget {
  const LCheckboxListTile({super.key});

  @override
  _LCheckboxListTileState createState() => _LCheckboxListTileState();
}

class _LCheckboxListTileState extends State<LCheckboxListTile> {
  List<String> _list = [];

  bool? _isFootBall = false;
  bool? _isCricket = false;
  bool? _isVolleyBall = false;
  bool? _isKabaddi = false;
  bool? _isBaseball = false;
  bool? _isBasketBall = false;
  bool? _isOther = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              CheckboxListTile(
                title: Text("FootBall"),
                value: _isFootBall,
                secondary: Icon(Icons.animation),
                onChanged: (value) {
                  setState(() {
                    _isFootBall = value;
                    String selectVal = "FootBall";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Baseball"),
                value: _isBaseball,
                secondary: Icon(Icons.animation),
                activeColor: Colors.green,
                checkColor: Colors.white,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(() {
                    _isBaseball = value;
                    String selectVal = "Baseball";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Cricket"),
                value: _isCricket,
                secondary: Icon(Icons.animation),
                onChanged: (value) {
                  setState(() {
                    _isCricket = value;
                    String selectVal = "Cricket";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Kabaddi"),
                value: _isKabaddi,
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Icon(Icons.animation),
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _isKabaddi = value;
                    String selectVal = "Kabaddi";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
              CheckboxListTile(
                title: Text("BasketBall"),
                value: _isBasketBall,
                controlAffinity: ListTileControlAffinity.platform,
                secondary: Icon(Icons.animation),
                onChanged: (value) {
                  setState(() {
                    _isBasketBall = value;
                    String selectVal = "BasketBall";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
              CheckboxListTile(
                title: Text("VolleyBall"),
                value: _isVolleyBall,
                secondary: Icon(Icons.animation),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
                checkColor: Colors.amber,
                onChanged: (value) {
                  setState(() {
                    _isVolleyBall = value;
                    String selectVal = "VolleyBall";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Other Games"),
                value: _isOther,
                secondary: Icon(Icons.offline_bolt),
                activeColor: Colors.red,
                checkColor: Colors.yellow,
                subtitle: Text("If any other than above"),
                onChanged: (value) {
                  setState(() {
                    _isOther = value;
                    String selectVal = "Other Games";
                    value! ? _list.add(selectVal) : _list.remove(selectVal);
                  });
                },
              ),
            ],
          ),
        ),
        Center(
            child: _list.isEmpty
                ? Text("")
                : RichText(
                    text: TextSpan(
                        text: "Selected Games:\n",
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                        TextSpan(
                            text: '${_list.toString()} ',
                            style: TextStyle(fontSize: 16)),
                      ]))),
      ],
    );
  }
}

