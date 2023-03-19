import 'package:flutter/material.dart';

class LBuilderSnackbarExample extends StatelessWidget {
  const LBuilderSnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Builder Snackbar Example')),
      body: const Center(
        child: LBuilder(),
      ),
    );
  }
}


class LBuilder extends StatelessWidget {
  const LBuilder({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return Container(
            child: Center(
              child: ElevatedButton(
                child: const Text('Show Snackbar'),
                onPressed: () {
                  //Without the builder widget, the below code wont work, because of unavailability of builder context
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('SnackBar shown without using scaffold key'),
                    ),
                  );
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}

