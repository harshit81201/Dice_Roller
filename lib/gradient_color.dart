import 'package:flutter/material.dart';
import 'package:hello_world/roll_Dice.dart';
/*import 'package:hello_world/styled_text.dart';*/

var startAlignment = Alignment.bottomLeft;
var endAlignment = Alignment.topRight;

class GradientColor extends StatelessWidget {
  GradientColor(this.color1, this.color2, {super.key});
  final Color color1, color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: DiceRoller(),
      ),
    );
  }
}
