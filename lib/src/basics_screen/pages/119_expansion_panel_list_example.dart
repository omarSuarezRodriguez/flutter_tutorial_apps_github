import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LExpansionPanelListExample extends StatelessWidget {
  const LExpansionPanelListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Panel List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/119_expansion_panel_list_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LExpansionPanelList(),
      ),
    );
  }
}


class LExpansionPanelList extends StatefulWidget {
  const LExpansionPanelList({super.key});

  @override
  _LExpansionPanelListState createState() => _LExpansionPanelListState();
}

class _LExpansionPanelListState extends State<LExpansionPanelList> {
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ExpansionPanelList(
            expansionCallback: (i, isOpen) {
              setState(() {
                if (index == i)
                  index = -1;
                else
                  index = i;
              });
            },
            animationDuration: Duration(seconds: 1),
            dividerColor: Colors.teal,
            elevation: 2,
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 0 (Header Tap Enabled)"),
                  );
                },
                canTapOnHeader: true,
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 0'),
                ),
                isExpanded: index == 0,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 1"),
                  );
                },
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 1'),
                ),
                isExpanded: index == 1,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 2 (Header Tap Enabled)"),
                  );
                },
                canTapOnHeader: true,
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 2'),
                ),
                isExpanded: index == 2,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 3"),
                  );
                },
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 3'),
                ),
                isExpanded: index == 3,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text("Index 4"),
                  );
                },
                body: ListTile(
                  title: Text("Notes"),
                  subtitle: const Text('for index 4'),
                ),
                isExpanded: index == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

