import 'package:flutter/material.dart';

class LStepperExample extends StatelessWidget {
  const LStepperExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LStepper Example')),
      body: const Center(
        child: LStepper(),
      ),
    );
  }
}


class LStepper extends StatefulWidget {
  const LStepper({super.key});

  @override
  _LStepperState createState() => _LStepperState();
}

class _LStepperState extends State<LStepper> {
  // init the step to 0th position
  int currentStep = 0;
  List<Step> mySteps = [
    Step(title: Text("Step 1"), content: Text("Start"), isActive: true),
    Step(
        title: Text("Step 2"),
        content: Text("Process 1"),
        state: StepState.editing,
        isActive: true),
    Step(
        title: Text("Step 3"),
        content: Text("Process 2"),
        state: StepState.editing,
        isActive: true),
    Step(
        title: Text("Step 4"),
        content: Text("Process 3"),
        state: StepState.editing,
        isActive: true),
    Step(title: Text("Step 5"), content: Text("End"), isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stepper(
      currentStep: this.currentStep,
      steps: mySteps,
      type: StepperType.vertical,
      onStepTapped: (step) {
        setState(() {
          currentStep = step;
        });
      },
      onStepCancel: () {
        setState(() {
          if (currentStep > 0) {
            currentStep = currentStep - 1;
          } else {
            currentStep = 0;
          }
        });
      },
      onStepContinue: () {
        setState(() {
          if (currentStep < mySteps.length - 1) {
            currentStep = currentStep + 1;
          } else {
            currentStep = 0;
          }
        });
      },
    ));
  }
}

