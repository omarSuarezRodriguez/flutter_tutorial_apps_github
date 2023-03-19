import 'package:flutter/material.dart';

class LFractionallySizedBoxExample extends StatelessWidget {
  const LFractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fractionally Sized Box')),
      body: const Center(
        child: LFractionallySizedBox(),
      ),
    );
  }
}



class LFractionallySizedBox extends StatelessWidget {
  const LFractionallySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          height: MediaQuery.of(context).size.height / 2,
          child: FractionallySizedBox(
            heightFactor: 0.5,
            widthFactor: 0.5,
            child: Container(
              color: Colors.yellow,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: Container(
                  color: Colors.green,
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
                    widthFactor: 0.5,
                    child: Container(
                      color: Colors.red,
                      child: FractionallySizedBox(
                        heightFactor: 0.25,
                        widthFactor: 0.25,
                        child: Container(
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )),
        Expanded(
          child: Container(
            child: FractionallySizedBox(
              heightFactor: 0.75,
              widthFactor: 0.25,
              child: Container(
                color: Colors.yellowAccent,
              ),
            ),
          ),
        )
      ],
    );
  }
}

