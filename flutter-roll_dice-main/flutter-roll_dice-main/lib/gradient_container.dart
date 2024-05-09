import 'package:custom_app_test/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:custom_app_test/styled_text.dart';

var startAlignment = Alignment.topRight;
// Alignment? startAlignment;
var endAlignment = Alignment.bottomLeft;
// final endAlignment = Alignment.bottomRight;
// const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        // child: StyledText('Hello World!')),
        child: PetRoller()
      ),
    );
  }
}
