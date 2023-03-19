import 'package:flutter/material.dart';

class LPhysicalModelExample extends StatelessWidget {
  const LPhysicalModelExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pysical Model')),
      body: const Center(
        child: LPhysicalModel(),
      ),
    );
  }
}



class LPhysicalModel extends StatelessWidget {
  const LPhysicalModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            PhysicalModel(
              color: Colors.deepOrange,
              elevation: 18.0,
              shadowColor: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            PhysicalModel(
              color: Colors.deepOrange,
              elevation: 18.0,
              shadowColor: Colors.red,
              shape: BoxShape.circle,
              child: Opacity(
                opacity: 0.75,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

