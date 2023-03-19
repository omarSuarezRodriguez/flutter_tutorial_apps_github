import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageSelectorBasicsExample extends StatelessWidget {
  const PageSelectorBasicsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Selector'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/143_page_selector_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: PageSelectorExample(),
      ),
    );
  }
}


class PageSelectorExample extends StatelessWidget {
  const PageSelectorExample({super.key});

  static const kIcons = <Icon>[
    Icon(Icons.event),
    Icon(Icons.home),
    Icon(Icons.android),
    Icon(Icons.alarm),
    Icon(Icons.face),
    Icon(Icons.language),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: kIcons.length,
      // Use a Builder here, otherwise `DefaultTabController.of(context)` below
      // returns null.
      child: Builder(
        builder: (BuildContext context) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const TabPageSelector(),
              Expanded(
                child: IconTheme(
                  data: IconThemeData(
                    size: 128.0,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: const TabBarView(children: kIcons),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final TabController controller =
                      DefaultTabController.of(context)!;
                  if (!controller.indexIsChanging) {
                    controller.animateTo(kIcons.length - 1);
                  }
                },
                child: const Text('SKIP'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
