import 'package:flutter/material.dart';

double size = 50;

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});
  final String text;

  Widget build(context){
    return Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: size,
          ),
        );
  }
}