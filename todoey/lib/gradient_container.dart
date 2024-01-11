import 'package:flutter/material.dart';
import 'package:todoey/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.firstColor,
    required this.secondColor,
  });

  //Gradient Container Constructor
  //This can be used as a default instead of calling the constructor
  const GradientContainer.purple({super.key})
      : firstColor = Colors.red,
        secondColor = Colors.redAccent;

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              firstColor,
              secondColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
