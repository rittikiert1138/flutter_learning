import 'package:flutter/material.dart';
import 'package:flutter_app/text_container.dart';

const startAlignment = Alignment.topLeft;
const endAlignmenr = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // const GradientContainer.purple({super.key}) : color1 = Color(value)

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
      child: Center(
        child: Image.asset(
          "assets/images/dice-3.png",
          width: 200,
        ),
      ),
    );
  }
}
