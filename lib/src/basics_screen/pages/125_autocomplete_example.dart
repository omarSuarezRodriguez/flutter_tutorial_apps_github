import 'package:flutter/material.dart';

class LAutocompleteExample extends StatelessWidget {
  const LAutocompleteExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Complete')),
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

