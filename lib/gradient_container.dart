import 'package:flutter/material.dart';
import 'package:flutter_app/dice_roller.dart';
// import 'package:flutter_app/text_container.dart';

const startAlignment = Alignment.topLeft;
const endAlignmenr = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.bgRtk({super.key})
      : color1 = const Color.fromARGB(255, 192, 37, 37),
        color2 = const Color.fromARGB(255, 194, 20, 127);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: Alignment.bottomRight)),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
