import 'package:flutter/material.dart';

class LPageViewExample extends StatelessWidget {
  const LPageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page View')),
      body: const Center(
        child: LPageView(),
      ),
    );
  }
}



class LPageView extends StatelessWidget {
  const LPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.yellow,
          child: Center(
            child: Text("Swipe UP"),
          ),
        ),
        Container(
          color: Colors.pink,
          child: Center(
            child: Text("Swipe UP or Down"),
          ),
        ),
        Container(
          color: Colors.amber,
          child: Center(
            child: Text("Swipe UP or Down"),
          ),
        ),
        Container(
          color: Colors.cyan,
          child: Center(
            child: Text("Swipe UP or Down"),
          ),
        ),
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Text("Swipe Down"),
          ),
        ),
      ],
    );
  }
}

