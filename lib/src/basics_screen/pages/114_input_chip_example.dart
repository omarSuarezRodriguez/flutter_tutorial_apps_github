import 'package:flutter/material.dart';

class LInputChipExample extends StatelessWidget {
  const LInputChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Chip')),
      body: const Center(
        child: LInputChip(),
      ),
    );
  }
}


class LInputChip extends StatefulWidget {
  const LInputChip({super.key});

  @override
  _LInputChipState createState() => new _LInputChipState();
}

class _LInputChipState extends State<LInputChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InputChip(
          label: Text(isSelected ? "Selected" : "Select"),
          labelStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.red,
          onSelected: (bool value) {
            setState(() {
              isSelected = value;
            });
          },
          deleteIcon: Icon(
            Icons.cancel,
            color: Colors.white,
          ),
          onDeleted: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Delete clicked",
                ),
                duration: Duration(seconds: 1),
              ),
            );
          },
          selected: isSelected,
          selectedColor: Colors.green,
        ),
      ),
    );
  }
}

