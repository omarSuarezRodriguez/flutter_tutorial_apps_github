import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

class MainPersistentTabBarExample extends StatelessWidget {
  const MainPersistentTabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Persistent TabBar')),
      body: Center(
        child: MainPersistentTabBar(),
      ),
    );
  }
}

class MainPersistentTabBar extends StatelessWidget {
  const MainPersistentTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: "Non persistent",
              ),
              Tab(icon: Icon(Icons.directions_transit), text: "Persistent"),
              Tab(icon: Icon(Icons.directions_railway), text: "Test 1"),
              Tab(icon: Icon(Icons.directions_subway), text: "Test 2"),
            ],
          ),
          title: Text('Persistent Tab Demo'),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Text('Page 3'),
            Text('Page 4'),
          ],
        ),
      ),
    );
  }
}
