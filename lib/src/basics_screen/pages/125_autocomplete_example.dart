import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LAutocompleteExample extends StatelessWidget {
  const LAutocompleteExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Complete'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/omarSuarezRodriguez/flutter_tutorial_apps_github/blob/main/lib/src/basics_screen/pages/125_autocomplete_example.dart'),
              );
            },
          ),
        ],),
      body: Center(
        child: LAutocomplete(),
      ),
    );
  }
}


class LAutocomplete extends StatelessWidget {
   List<String> options = <String>['apple', 'ball', 'cat', 'dog','elephant', 'fish', 'gorilla'];

  LAutocomplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return options.where((String option) {
              return option.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String selection) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(selection),
              ),
            );
          },
        ),
      ),
    );
  }
}

