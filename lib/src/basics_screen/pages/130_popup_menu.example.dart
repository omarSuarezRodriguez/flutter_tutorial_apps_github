import 'package:flutter/material.dart';

class SPopupMenuButtonExample extends StatelessWidget {
  const SPopupMenuButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popum Menu Button')),
      body: const Center(
        child: SPopupMenuButton(),
      ),
    );
  }
}



enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class SPopupMenuButton extends StatelessWidget {
  const SPopupMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {

      },
      itemBuilder: (BuildContext context) =>
      <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.harder,
          child: Text('Working a lot harder'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.smarter,
          child: Text('Being a lot smarter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.selfStarter,
          child: Text('Being a self-starter'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.tradingCharter,
          child: Text('Placed in charge of trading charter'),
        ),
      ],
    );
  }
}
