import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LFutureBuilderExample extends StatelessWidget {
  const LFutureBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Builder'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/87_future_builder_example.dart'),
              );
            },
          ),
        ],),
      body: const Center(
        child: LFutureBuilder(),
      ),
    );
  }
}



class LFutureBuilder extends StatefulWidget {
  const LFutureBuilder({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<LFutureBuilder> {
  Future<String> _countDown = Future<String>.delayed(
    Duration(seconds: 5),
    () => 'Data Loaded',
  );

  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _countDown, // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        List<Widget> children;
        if (snapshot.hasData) {
          children = <Widget>[
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Result: ${snapshot.data}'),
            )
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            )
          ];
        } else {
          children = <Widget>[
            SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            )
          ];
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        );
      },
    );
  }
}

