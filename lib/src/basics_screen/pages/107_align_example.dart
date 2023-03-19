import 'package:flutter/material.dart';

class LAlignExample extends StatelessWidget {
  const LAlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Example')),
      body: const Center(
        child: LAlign(),
      ),
    );
  }
}



class LAlign extends StatelessWidget {
  const LAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 300,
          color: Colors.grey[200],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ],
          )),
    );
  }
}

